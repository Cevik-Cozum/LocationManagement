package com.cevikcozum.service.template.entity;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;




@Entity
@Table(name = "ADDRESS")

public class Address {
	   @Id
	    @Column(name = "ADDRESSID") //id neighborhoodName
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int addressid;
	   
	    @Column(name = "NAME")
	    private String addressName;


	    public int getId() {
	        return addressid;
	    }


	    public void setId(int id) {
	        this.addressid = id;
	    }

	    public String getaddressName() {
	        return addressName;
	    }


	    public void setaddressName(String addressName) {
	        this.addressName = addressName;
	    }
}
	  