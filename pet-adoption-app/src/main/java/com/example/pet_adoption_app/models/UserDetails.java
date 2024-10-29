package com.example.pet_adoption_app.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;

@Entity
@Table(name="userDetails_table")
public class UserDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long userDetails_id;
	private String q1;
	private String q2;
	private String q3;
	private String q4;
	private String q5;
	private String q5a;
	private String q6;
	private String q7;
	private String q8;
	private String q9;
	private String q10;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	
	@PrePersist
	protected void newDate() {
		this.createdAt=new Date();
	}
	
	public UserDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	public UserDetails(Long userDetails_id,String q1, String q2, String q3, String q4, String q5, String q5a, String q6, String q7,
			String q8, String q9, String q10) {
		super();
		this.userDetails_id = userDetails_id;
		this.q1 = q1;
		this.q2 = q2;
		this.q3 = q3;
		this.q4 = q4;
		this.q5 = q5;
		this.q5a = q5a;
		this.q6 = q6;
		this.q7 = q7;
		this.q8 = q8;
		this.q9 = q9;
		this.q10 = q10;
	}

	public Long getUserDetails_id() {
		return userDetails_id;
	}

	public void setUserDetails_id(Long userDetails_id) {
		this.userDetails_id = userDetails_id;
	}

	public String getQ1() {
		return q1;
	}

	public void setQ1(String q1) {
		this.q1 = q1;
	}

	public String getQ2() {
		return q2;
	}

	public void setQ2(String q2) {
		this.q2 = q2;
	}

	public String getQ3() {
		return q3;
	}

	public void setQ3(String q3) {
		this.q3 = q3;
	}

	public String getQ4() {
		return q4;
	}

	public void setQ4(String q4) {
		this.q4 = q4;
	}

	public String getQ5() {
		return q5;
	}

	public void setQ5(String q5) {
		this.q5 = q5;
	}

	public String getQ5a() {
		return q5a;
	}

	public void setQ5a(String q5a) {
		this.q5a = q5a;
	}

	public String getQ6() {
		return q6;
	}

	public void setQ6(String q6) {
		this.q6 = q6;
	}

	public String getQ7() {
		return q7;
	}

	public void setQ7(String q7) {
		this.q7 = q7;
	}

	public String getQ8() {
		return q8;
	}

	public void setQ8(String q8) {
		this.q8 = q8;
	}

	public String getQ9() {
		return q9;
	}

	public void setQ9(String q9) {
		this.q9 = q9;
	}

	public String getQ10() {
		return q10;
	}

	public void setQ10(String q10) {
		this.q10 = q10;
	}
	
	
}
