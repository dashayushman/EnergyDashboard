package com.company.energy.utility;

import com.company.energy.dal.EnergyDao;

public class EnergyUtil {
	EnergyDao dao;

	public EnergyDao getDao() {
		return dao;
	}

	public void setDao(EnergyDao dao) {
		this.dao = dao;
	}
}
