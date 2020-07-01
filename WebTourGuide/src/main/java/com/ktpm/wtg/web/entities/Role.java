package com.ktpm.wtg.web.entities;

import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;

public class Role {
	@Id
	private String _id;
	
	private String role;

	public Role(String _id, String role) {
		super();
		this._id = _id;
		this.role = role;
	}

	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String get_id() {
		return _id;
	}

	public void set_id(String _id) {
		this._id = _id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "Role [_id=" + _id + ", role=" + role + "]";
	}
}
