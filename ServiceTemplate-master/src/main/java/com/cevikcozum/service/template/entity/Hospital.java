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
@Table(name = "HOSPITAL")

public class Hospital {
	   @Id
	    @Column(name = "HOSPITAID") //id neighborhoodName
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int hospitalid;
	   
	    @Column(name = "NAME")
	    private String hospitalName;


	    public int getId() {
	        return hospitalid;
	    }


	    public void setId(int id) {
	        this.hospitalid = id;
	    }

	    public String gethospitalName() {
	        return hospitalName;
	    }


	    public void sethospitalName(String hospitalName) {
	        this.hospitalName = hospitalName;
	    }
}
	  