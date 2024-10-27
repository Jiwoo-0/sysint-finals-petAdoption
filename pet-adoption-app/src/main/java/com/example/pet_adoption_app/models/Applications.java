package com.example.pet_adoption_app.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import jakarta.persistence.Table;

@Entity
@Table(name = "application_table")
public class Applications {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long application_id;
	private long user_id;
	private long pet_id;
	private String application_status;
	private String approval_date;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date application_date;
	
	@DateTimeFormat(pattern = "yyy-MM-dd")
	private Date updatedAt;
	
	@PrePersist
	protected void newDate() {
		this.application_date=new Date();
	}
	
	@PreUpdate
	protected void updatedDate() {
		this.updatedAt = new Date();
	}
	
	public Applications() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Applications(long application_id, long user_id, long pet_id, Date application_date,
			String application_status, String approval_date) {
		super();
		this.application_id = application_id;
		this.user_id = user_id;
		this.pet_id = pet_id;
		this.application_date = application_date;
		this.application_status = application_status;
		this.approval_date = approval_date;
	}
	
	public long getApplication_id() {
		return application_id;
	}
	
	public void setApplication_id(long application_id) {
		this.application_id = application_id;
	}
	
	public long getUser_id() {
		return user_id;
	}
	
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	
	public long getPet_id() {
		return pet_id;
	}
	
	public void setPet_id(long pet_id) {
		this.pet_id = pet_id;
	}
	
	public Date getApplication_date() {
		return application_date;
	}
	
	public void setApplication_date(Date application_date) {
		this.application_date = application_date;
	}
	
	public String getApplication_status() {
		return application_status;
	}
	
	public void setApplication_status(String application_status) {
		this.application_status = application_status;
	}
	
	public String getApproval_date() {
		return approval_date;
	}
	
	public void setApproval_date(String approval_date) {
		this.approval_date = approval_date;
	}
	
}