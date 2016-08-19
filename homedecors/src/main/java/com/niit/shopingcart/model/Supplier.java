package com.niit.shopingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "SUPPLIER")
@Component
public class Supplier {
	
	@Id
	@NotEmpty
	@Column(name="id")
	private String id;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
@NotEmpty
@Size(min=5)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	@NotEmpty

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	private String name;
	
	private String address;
	

}

