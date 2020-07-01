package com.ktpm.wtg.service.entities;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "User")
public class User {
	@Id
	private String _id;
	
	private String fullName;
	private String birthday;
	private String gender;
	private String phoneNumber;
	private String username;
	private String password;
	private String email;
	private String status;
	private String role;
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(String _id, String fullName, String birthday, String gender, String phoneNumber, String username,
			String password, String email, String status, String role) {
		super();
		this._id = _id;
		this.fullName = fullName;
		this.birthday = birthday;
		this.gender = gender;
		this.phoneNumber = phoneNumber;
		this.username = username;
		this.password = password;
		this.email = email;
		this.status = status;
		this.role = role;
	}


	public String get_id() {
		return _id;
	}


	public void set_id(String _id) {
		this._id = _id;
	}


	public String getFullName() {
		return fullName;
	}


	public void setFullName(String fullName) {
		this.fullName = fullName;
	}


	public String getBirthday() {
		return birthday;
	}


	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	public String getRole() {
		return role;
	}


	public void setRole(String role) {
		this.role = role;
	}


	@Override
	public String toString() {
		return "User [_id=" + _id + ", fullName=" + fullName + ", birthday=" + birthday + ", gender=" + gender
				+ ", phoneNumber=" + phoneNumber + ", username=" + username + ", password=" + password + ", email="
				+ email + ", status=" + status + ", role=" + role + "]";
	}
	
	
}
