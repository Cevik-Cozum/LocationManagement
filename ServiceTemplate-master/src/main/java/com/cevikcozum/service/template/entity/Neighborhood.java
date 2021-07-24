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
@Table(name = "NEIGHBORHOOD")

public class Neighborhood {
	   @Id
	    @Column(name = "NEIGHBORHOODID") //id neighborhoodName
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int neighborhoodid;
	   
	    @Column(name = "NAME")
	    private String neighborhoodName;


	    public int getId() {
	        return neighborhoodid;
	    }


	    public void setId(int id) {
	        this.neighborhoodid = id;
	    }

	    public String getneighborhoodName() {
	        return neighborhoodName;
	    }


	    public void setneighborhoodName(String neighborhoodName) {
	        this.neighborhoodName = neighborhoodName;
	    }
}
