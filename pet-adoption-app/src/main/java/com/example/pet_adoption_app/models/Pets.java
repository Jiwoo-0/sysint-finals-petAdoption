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
@Table(name = "pet_table")
public class Pets {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long pet_id;
	private String pet_name;
	private String breed;
	private int pet_age;
	private String pet_gender;
	private String pet_weight;
	private String pet_height;
	private String neutured_status;
	private String medical_history;
	private String description;
	
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
	
	public Pets() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Pets(long pet_id, String pet_name, String breed, int pet_age, String pet_gender, String pet_weight,
			String pet_height, String neutured_status, String medical_history, String description) {
		super();
		this.pet_id = pet_id;
		this.pet_name = pet_name;
		this.breed = breed;
		this.pet_age = pet_age;
		this.pet_gender = pet_gender;
		this.pet_weight = pet_weight;
		this.pet_height = pet_height;
		this.neutured_status = neutured_status;
		this.medical_history = medical_history;
		this.description = description;
	}

	public long getPet_id() {
		return pet_id;
	}

	public void setPet_id(long pet_id) {
		this.pet_id = pet_id;
	}

	public String getPet_name() {
		return pet_name;
	}

	public void setPet_name(String pet_name) {
		this.pet_name = pet_name;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public int getPet_age() {
		return pet_age;
	}

	public void setPet_age(int pet_age) {
		this.pet_age = pet_age;
	}

	public String getPet_gender() {
		return pet_gender;
	}

	public void setPet_gender(String pet_gender) {
		this.pet_gender = pet_gender;
	}

	public String getPet_weight() {
		return pet_weight;
	}

	public void setPet_weight(String pet_weight) {
		this.pet_weight = pet_weight;
	}

	public String getPet_height() {
		return pet_height;
	}

	public void setPet_height(String pet_height) {
		this.pet_height = pet_height;
	}

	public String getNeutured_status() {
		return neutured_status;
	}

	public void setNeutured_status(String neutured_status) {
		this.neutured_status = neutured_status;
	}

	public String getMedical_history() {
		return medical_history;
	}

	public void setMedical_history(String medical_history) {
		this.medical_history = medical_history;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
