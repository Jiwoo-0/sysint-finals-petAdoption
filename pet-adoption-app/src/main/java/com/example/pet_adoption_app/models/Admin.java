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
@Table(name = "admin_table")
public class Admin {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long admin_id;
	private String admin_first_name;
	private String admin_last_name;
	private String admin_email;
	private String admin_password;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern = "yyy-MM-dd")
	private Date updatedAt;
	
	@PrePersist
	protected void newDate() {
		this.createdAt=new Date();
	}
	
	@PreUpdate
	protected void updatedDate() {
		this.updatedAt = new Date();
	}
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Admin(long admin_id, String admin_first_name, String admin_last_name,
			String admin_email, String admin_password) {
		super();
		this.admin_id = admin_id;
		this.admin_first_name = admin_first_name;
		this.admin_last_name = admin_last_name;
		this.admin_email = admin_email;
		this.admin_password = admin_password;
	}
	public long getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(long admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_first_name() {
		return admin_first_name;
	}
	public void setAdmin_first_name(String admin_first_name) {
		this.admin_first_name = admin_first_name;
	}
	public String getAdmin_last_name() {
		return admin_last_name;
	}
	public void setAdmin_last_name(String admin_last_name) {
		this.admin_last_name = admin_last_name;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}

	
}
