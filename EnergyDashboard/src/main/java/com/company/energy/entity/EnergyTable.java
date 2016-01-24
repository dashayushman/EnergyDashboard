package com.company.energy.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "tbl_usagedata")
public class EnergyTable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "id")
	private Integer id;

	@Column(name = "lclid")
	private String lclid;

	@Column(name = "date")
	private Date date;

	@Column(name = "time")
	private String time;

	@Column(name = "month")
	private Integer month;

	@Column(name = "year")
	private Integer year;

	@Column(name = "power")
	private Double power;

	@Transient
	private java.util.Date javaDate;

	public java.util.Date getJavaDate() {
		return javaDate;
	}

	public void setJavaDate(java.util.Date javaDate) {
		this.javaDate = javaDate;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLclid() {
		return lclid;
	}

	public void setLclid(String lclid) {
		this.lclid = lclid;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public Integer getMonth() {
		return month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getYear() {
		return year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Double getPower() {
		return power;
	}

	public void setPower(Double power) {
		this.power = power;
	}

}
