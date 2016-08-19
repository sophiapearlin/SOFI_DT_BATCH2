package com.niit.shopingcart.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.stereotype.Component;

@Entity
@Table(name="CATEGORY")
@Component
public class Category {

	private String id;
	private String name;
	private String description;
	private Set<Product> products;
	
	@OneToMany(mappedBy="category",fetch = FetchType.EAGER)
	public Set<Product> getProducts() {
		return products;
	}
	public void setProducts(Set<Product> products) {
		this.products = products;
	}
	
	
	
	
	@Id
	@NotEmpty
	@Column(name = "ID")
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}
