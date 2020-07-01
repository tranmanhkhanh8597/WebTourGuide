package com.ktpm.wtg.service.entities;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.TextIndexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "Guider")
public class Guider {
    @Id
    private String  _id;
    
    private String fullName;   
    private String rating;   
    private String birthday;       
    private String phoneNumber; 
    private String username;   
    private String password;  
    private String email;
    private String firstTour;
    private String retrictions;
    private String review;
    @TextIndexed(weight=3) private String country;   
    @TextIndexed private String languages; 
    @TextIndexed private String gender;
    private String biography;   
    private String credentials; 
    private String image;
    
	public Guider() {
		super();
	}

	public Guider(String _id, String fullName, String rating, String birthday, String phoneNumber, String username,
			String password, String email, String firstTour, String retrictions, String review, String country,
			String languages, String gender, String biography, String credentials, String image) {
		super();
		this._id = _id;
		this.fullName = fullName;
		this.rating = rating;
		this.birthday = birthday;
		this.phoneNumber = phoneNumber;
		this.username = username;
		this.password = password;
		this.email = email;
		this.firstTour = firstTour;
		this.retrictions = retrictions;
		this.review = review;
		this.country = country;
		this.languages = languages;
		this.gender = gender;
		this.biography = biography;
		this.credentials = credentials;
		this.image = image;
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

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
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

	public String getFirstTour() {
		return firstTour;
	}

	public void setFirstTour(String firstTour) {
		this.firstTour = firstTour;
	}

	public String getRetrictions() {
		return retrictions;
	}

	public void setRetrictions(String retrictions) {
		this.retrictions = retrictions;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getLanguages() {
		return languages;
	}

	public void setLanguages(String languages) {
		this.languages = languages;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBiography() {
		return biography;
	}

	public void setBiography(String biography) {
		this.biography = biography;
	}

	public String getCredentials() {
		return credentials;
	}

	public void setCredentials(String credentials) {
		this.credentials = credentials;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Guider [_id=" + _id + ", fullName=" + fullName + ", rating=" + rating + ", birthday=" + birthday
				+ ", phoneNumber=" + phoneNumber + ", username=" + username + ", password=" + password + ", email="
				+ email + ", firstTour=" + firstTour + ", retrictrions=" + retrictions + ", review=" + review
				+ ", country=" + country + ", languages=" + languages + ", gender=" + gender + ", biography="
				+ biography + ", credentials=" + credentials + ", image=" + image + "]";
	}
	
	
}
