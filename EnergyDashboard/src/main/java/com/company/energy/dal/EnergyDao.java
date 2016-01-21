package com.company.energy.dal;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

public class EnergyDao {
	public static final Logger logger = LoggerFactory
			.getLogger(EnergyDao.class);

	@PersistenceContext
	protected EntityManager em;
	@Autowired
	private DataSource dataSource;

}
