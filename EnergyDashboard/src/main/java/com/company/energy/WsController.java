package com.company.energy;

import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.company.energy.org.json.JSONObject;
import com.company.energy.utility.EnergyUtil;

/**
 * Handles requests for the application home page.
 */
@Controller
public class WsController {
	
	private static final Logger logger = LoggerFactory.getLogger(WsController.class);
	
	@Autowired
	private EnergyUtil utils;
	
	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
	public @ResponseBody String getdata(MultipartHttpServletRequest request,HttpServletResponse response,HttpServletRequest req) {
		Iterator<String> itr = request.getFileNames();
		while(itr.hasNext()){
			MultipartFile mpf = request.getFile(itr.next());
			try {
				int successFlag = utils.addFileToDB(mpf);
				if(successFlag == 0){
					return "0"; 
				}else{
					return "1";
				}
			} catch (Exception e) {
				e.printStackTrace();
				return "0";			}
		}
		return "1";
	}
	
	@RequestMapping(value = "/getEnergyDataByMonth", method = RequestMethod.GET,produces = "application/json;charset=UTF-8")
	public @ResponseBody String getdata(
			@RequestParam(value = "start", required = true) Integer start,
			@RequestParam(value = "end", required = true) Integer end,
			@RequestParam(value = "year", required = true) Integer year,
			HttpServletResponse response,HttpServletRequest req) {
		
		
		String objJson = utils.getDataByMonth(start,end,year);
		return objJson;
		}
	
	
}
