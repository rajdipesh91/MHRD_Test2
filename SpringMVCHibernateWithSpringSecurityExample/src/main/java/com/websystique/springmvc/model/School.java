/**
 * 
 */
package com.websystique.springmvc.model;

//import java.util.Comparator;
//import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.OneToOne;
import javax.persistence.Table;
//import javax.validation.constraints.Size;
//import org.springframework.format.annotation.DateTimeFormat;

/**
 * @author Dipesh Yadav
 *
 */
@Entity
@Table(schema = "login", name = "school_data")

public class School {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "school_id", unique = true, nullable = false)
	private int id;

	@Column(name = "total")
	private Integer total;

	@Column(name = "general")
	private Integer general;
	
	@Column(name = "sc")
	private Integer sc;
	
	@Column(name = "st")
	private Integer st;
	
	@Column(name = "others")
	private Integer others;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getGeneral() {
		return general;
	}

	public void setGeneral(Integer general) {
		this.general = general;
	}

	public Integer getSc() {
		return sc;
	}

	public void setSc(Integer sc) {
		this.sc = sc;
	}

	public Integer getSt() {
		return st;
	}

	public void setSt(Integer st) {
		this.st = st;
	}

	public Integer getOthers() {
		return others;
	}

	public void setOthers(Integer others) {
		this.others = others;
	}
	
	
	
	






}
