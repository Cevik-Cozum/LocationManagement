package com.cevikcozum.service.template.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name = "CITY")// cityid cityName
public class Cıty {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CITYID")
    private int cityid;

    @Column(name = "NAME")
    private String cityName;
   
    public Cıty(){

    }
    public Cıty(String cityName) {
        this.cityName = cityName;
    }
    public int getId() {
        return cityid;
    }

    public void setId(int id) {
        this.cityid = id;
    }
    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

 
}
