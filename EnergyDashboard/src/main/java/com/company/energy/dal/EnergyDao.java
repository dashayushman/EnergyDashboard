package com.company.energy.dal;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.sql.DataSource;

import org.apache.commons.collections.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.company.energy.entity.EnergyTable;

public class EnergyDao {
	public static final Logger logger = LoggerFactory
			.getLogger(EnergyDao.class);

	@PersistenceContext
	protected EntityManager em;
	@Autowired
	private DataSource dataSource;

	@Transactional
	public int updateDataToDb(ArrayList<EnergyTable> tableList) {
		try {
			for (EnergyTable energyTable : tableList) {
				em.persist(energyTable);
			}
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}

	}

	@Transactional
	public ArrayList<Object> getDataByMonth(int start, int end,int year) {

		try {

			Query qSelectLangs = this.em.createQuery( "SELECT sum(o.power) as pow, o.month from EnergyTable o"
		             + " where o.month between :start and :end and o.year = :yr"
		             + " group by o.month");
			qSelectLangs.setParameter("start", start);
			qSelectLangs.setParameter("yr", year);
			qSelectLangs.setParameter("end", end);
//			qSelectLangs.setParameter("yr", year);
			List resultList = qSelectLangs.getResultList();
			ArrayList<Object> ResultList = CollectionUtils.isEmpty(resultList) ? null
					: (ArrayList<Object>) resultList;
			logger.info("domains received");
			return ResultList;
		} catch (Exception e) {
			e.printStackTrace();//
			for (StackTraceElement ste : e.getStackTrace()) {
				logger.info("Class name : " + ste.getClassName()
						+ "\nFile name : " + ste.getFileName()
						+ "\nLine number : " + ste.getLineNumber()
						+ "\nMethod name : " + ste.getMethodName());
				/*
				 * Send email to admin on exception
				 */
			}
			return null;
		}
	}

}
