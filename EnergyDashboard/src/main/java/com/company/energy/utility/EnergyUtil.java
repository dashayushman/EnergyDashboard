package com.company.energy.utility;

import java.math.RoundingMode;
import java.sql.Date;
import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;

import org.springframework.web.multipart.MultipartFile;

import com.company.energy.beans.UploadedFile;
import com.company.energy.dal.EnergyDao;
import com.company.energy.entity.EnergyTable;
import com.company.energy.org.json.JSONException;
import com.company.energy.org.json.JSONObject;

public class EnergyUtil {
	EnergyDao dao;

	public EnergyDao getDao() {
		return dao;
	}

	public void setDao(EnergyDao dao) {
		this.dao = dao;
	}

	public synchronized int addFileToDB(MultipartFile mpf) throws Exception {

		UploadedFile ufile = new UploadedFile();
		ufile.setLength(mpf.getBytes().length);
		ufile.setBytes(mpf.getBytes());
		String s = new String(ufile.getBytes());
//		System.out.println(s);
		ufile.setFileContent(s);
		ufile.setType(mpf.getContentType());
		ufile.setName(mpf.getOriginalFilename());
		
		ArrayList<EnergyTable> tableList = convertFileContent(s);
		int flag = dao.updateDataToDb(tableList);
		if(flag == 1){
			return 1;
		}else{
			return 0;
		}
	}

	public ArrayList<EnergyTable> convertFileContent(String fileContent) {

		String line[] = fileContent.split("\\r?\\n");
		ArrayList<EnergyTable> energyVector = new ArrayList<EnergyTable>();
		for (int i = 0; i < line.length; i++) {
			if (i == 0)
				continue;

			String attributes[] = line[i].split(";");
			EnergyTable etVal = new EnergyTable();
			int upperError = 0;
//			System.out.println(line[i]);
			for (int j = 0; j < attributes.length; j++) {
				int error = 0;
				if(attributes[j].toLowerCase().equals("null")){
					error = 1;
					upperError = 1;
					break;
				}
				switch (j) {
				case 0:
					etVal.setLclid(attributes[j]);
					break;
				case 1:
					Date date = convertStringToSqlDate(attributes[j]);
					java.util.Date dt = convertStringToJavaDate(attributes[j]);
					if (date != null && dt != null) {
						etVal.setDate(date);
						etVal.setJavaDate(dt);
					} else {
						error = 1;
						upperError = 1;
					}
					break;
				case 2:
					etVal.setTime(attributes[j]);
					break;
				case 3:
					
					String power = attributes[j].replace(",", ".");
					if(power ==  null){
						error = 1;
						upperError = 1;
						break;
					}else{
						Double db = new Double(power);
						etVal.setPower(db);
						break;
					}
					
				default:
					error = 1;
					upperError = 1;
					break;
				}
				if (error == 1) {
					break;
				}

			}
			if(upperError == 1){
				continue;
			}
			etVal.setMonth(getMonthFromDate(etVal.getJavaDate()));
			etVal.setYear(getYearFromDate(etVal.getJavaDate()));
			energyVector.add(etVal);
			
		}
		return energyVector;
		
		

	}

	public Integer getMonthFromDate(java.util.Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int month = cal.get(Calendar.MONTH);
		return month;
		
	}

	public Integer getYearFromDate(java.util.Date date) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(date);
		int year = cal.get(Calendar.YEAR);
		return year;

	}

	public Date convertStringToSqlDate(String dateInString) {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		dateInString = dateInString.replaceAll("\\.", "-");
		try {

			java.util.Date date = formatter.parse(dateInString);
			Date d = new Date(date.getTime());
			return d;

		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}

	}

	public java.util.Date convertStringToJavaDate(String dateInString) {
		SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		dateInString = dateInString.replaceAll("\\.", "-");
		try {

			java.util.Date date = formatter.parse(dateInString);

			return date;

		} catch (ParseException e) {
			e.printStackTrace();
			return null;
		}

	}

	public String getDataByMonth(int start, int end, int year) {
		ArrayList<Object> objDataList = dao.getDataByMonth(start, end, year);
		
		ArrayList<String> months = new ArrayList<String>();
		ArrayList<Double> dataList = new ArrayList<Double>();
		if (objDataList != null) {
			if(objDataList.size() == 0){
				return "{\"status\":-1}";
			}
			
			for (Object object : objDataList) {
				Object obj[] = (Object[]) object;
				Double pow = (Double) obj[0];
				Integer month = (Integer) obj[1];
				DecimalFormat df = new DecimalFormat("#.####");
				df.setRoundingMode(RoundingMode.CEILING);
				months.add(getMonthFromNumber(month));
				dataList.add(new Double(df.format(pow)));
			}
			JSONObject objJs = new JSONObject();
			try {
				objJs.put("data", dataList);
			    objJs.put("month", months);
			    return objJs.toString();
			} catch (JSONException e) {
				return "{\"status\":0}";
			}
		}else{
			return "{\"status\":0}";
		}
	}

	public String getMonthFromNumber(Integer month) {

		switch (month) {
		case 1:

			return "january";
		case 2:

			return "february";
		case 3:

			return "march";
		case 4:

			return "april";
		case 5:

			return "may";
		case 6:

			return "june";
		case 7:

			return "july";
		case 8:

			return "august";

		case 9:

			return "september";
		case 10:

			return "october";
		case 11:

			return "november";
		case 12:

			return "december";
		default:
			return "january";
		}

	}
}
