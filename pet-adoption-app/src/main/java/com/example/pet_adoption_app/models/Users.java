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
@Table(name = "user_tbl")
public class Users {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long user_id;
	
	private String user_first_name;
	private String user_middle_name;
	private String user_last_name;
	private String user_email;
	private String user_password;
	private String user_phone_number;
	private String user_address;
	
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
	
	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Users(long user_id, String user_first_name, String user_middle_name, String user_last_name,
			String user_email, String user_password, String user_phone_number, String user_address) {
		super();
		this.user_id = user_id;
		this.user_first_name = user_first_name;
		this.user_middle_name = user_middle_name;
		this.user_last_name = user_last_name;
		this.user_email = user_email;
		this.user_password = user_password;
		this.user_phone_number = user_phone_number;
		this.user_address = user_address;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public String getUser_first_name() {
		return user_first_name;
	}

	public void setUser_first_name(String user_first_name) {
		this.user_first_name = user_first_name;
	}

	public String getUser_middle_name() {
		return user_middle_name;
	}

	public void setUser_middle_name(String user_middle_name) {
		this.user_middle_name = user_middle_name;
	}

	public String getUser_last_name() {
		return user_last_name;
	}

	public void setUser_last_name(String user_last_name) {
		this.user_last_name = user_last_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_phone_number() {
		return user_phone_number;
	}

	public void setUser_phone_number(String user_phone_number) {
		this.user_phone_number = user_phone_number;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
	
	
	
}
