package com.ktpm.wtg.service.entities;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.TextIndexed;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection = "Tour")
public class Tour {
	@Id
    private String  _id;
	
	@TextIndexed(weight=3) private String name;   
    private String rating;
    private String price;   
    private String time; 
    private String introduce;   
    private String journeys; 
    private String transportation;   
    private String tour_duration;  
    private String includes; 
    private String retrictions;   
    private String image; 
    private String status;
    @TextIndexed private String location;
    @TextIndexed private String guiderName;
    private String title;
    private String limit_person;
    private String details;
    
	public Tour() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Tour(String _id, String name, String rating, String price, String time, String introduce, String journeys,
			String transportation, String tour_duration, String includes, String retrictions, String image,
			String status, String location, String guiderName, String title, String limit_person, String details) {
		super();
		this._id = _id;
		this.name = name;
		this.rating = rating;
		this.price = price;
		this.time = time;
		this.introduce = introduce;
		this.journeys = journeys;
		this.transportation = transportation;
		this.tour_duration = tour_duration;
		this.includes = includes;
		this.retrictions = retrictions;
		this.image = image;
		this.status = status;
		this.location = location;
		this.guiderName = guiderName;
		this.title = title;
		this.limit_person = limit_person;
		this.details = details;
	}

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}

	public String getJourneys() {
		return journeys;
	}

	public void setJourneys(String journeys) {
		this.journeys = journeys;
	}

	public String getTransportation() {
		return transportation;
	}

	public void setTransportation(String transportation) {
		this.transportation = transportation;
	}

	public String getTour_duration() {
		return tour_duration;
	}

	public void setTour_duration(String tour_duration) {
		this.tour_duration = tour_duration;
	}

	public String getIncludes() {
		return includes;
	}

	public void setIncludes(String includes) {
		this.includes = includes;
	}

	public String getRetrictions() {
		return retrictions;
	}

	public void setRetrictions(String retrictions) {
		this.retrictions = retrictions;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getGuiderName() {
		return guiderName;
	}

	public void setGuiderName(String guiderName) {
		this.guiderName = guiderName;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLimit_person() {
		return limit_person;
	}

	public void setLimit_person(String limit_person) {
		this.limit_person = limit_person;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	@Override
	public String toString() {
		return "Tour [_id=" + _id + ", name=" + name + ", rating=" + rating + ", price=" + price + ", time=" + time
				+ ", introduce=" + introduce + ", journeys=" + journeys + ", transportation=" + transportation
				+ ", tour_duration=" + tour_duration + ", includes=" + includes + ", retrictions=" + retrictions
				+ ", image=" + image + ", status=" + status + ", location=" + location + ", guiderName=" + guiderName
				+ ", title=" + title + ", limit_person=" + limit_person + ", details=" + details + "]";
	}
	
	
}
