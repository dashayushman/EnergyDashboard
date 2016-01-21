package com.company.energy.utility;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.company.energy.beans.UploadedFile;
import com.company.energy.dal.EnergyDao;

public class EnergyUtil {
	EnergyDao dao;

	public EnergyDao getDao() {
		return dao;
	}

	public void setDao(EnergyDao dao) {
		this.dao = dao;
	}

	public int addFileToClientRequestMap(MultipartFile mpf) throws IOException {

		UploadedFile ufile = new UploadedFile();
		ufile.setLength(mpf.getBytes().length);
		ufile.setBytes(mpf.getBytes());
		String s = new String(ufile.getBytes());
		System.out.println(s);
		ufile.setType(mpf.getContentType());
		ufile.setName(mpf.getOriginalFilename());
		return 1;
	}
}
