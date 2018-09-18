package pojo;

// Generated 1 Apr, 2016 3:29:44 PM by Hibernate Tools 3.4.0.CR1

import java.math.BigDecimal;

/**
 * Income generated by hbm2java
 */
public class Income implements java.io.Serializable {

	private Integer id;
	private String type;
	private String description;
	private BigDecimal amount;
	private Integer day;
	private Integer month;
	private Integer year;
	private Integer hour;
	private Integer minute;
	private Integer second;
	private String amPm;

	public Income() {
	}

	public Income(String type, String description, BigDecimal amount,
			Integer day, Integer month, Integer year, Integer hour,
			Integer minute, Integer second, String amPm) {
		this.type = type;
		this.description = description;
		this.amount = amount;
		this.day = day;
		this.month = month;
		this.year = year;
		this.hour = hour;
		this.minute = minute;
		this.second = second;
		this.amPm = amPm;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BigDecimal getAmount() {
		return this.amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public Integer getDay() {
		return this.day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public Integer getMonth() {
		return this.month;
	}

	public void setMonth(Integer month) {
		this.month = month;
	}

	public Integer getYear() {
		return this.year;
	}

	public void setYear(Integer year) {
		this.year = year;
	}

	public Integer getHour() {
		return this.hour;
	}

	public void setHour(Integer hour) {
		this.hour = hour;
	}

	public Integer getMinute() {
		return this.minute;
	}

	public void setMinute(Integer minute) {
		this.minute = minute;
	}

	public Integer getSecond() {
		return this.second;
	}

	public void setSecond(Integer second) {
		this.second = second;
	}

	public String getAmPm() {
		return this.amPm;
	}

	public void setAmPm(String amPm) {
		this.amPm = amPm;
	}

}