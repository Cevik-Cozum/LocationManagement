package com.cevikcozum.service.template.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import com.fasterxml.jackson.annotation.JsonIgnore;


@Entity
@Table(name = "DISTRICT")
public class District {

    @Id
    @Column(name = "DISTRICTID")  //id districtName
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @JsonIgnore 
    private int districtid;
    @Column(name = "NAME")
    private String districtName;
    @ManyToMany(mappedBy = "districts")
    public int getId(){
        return districtid;
    }

    public void setId(int districtid){
        this.districtid=districtid;
    }
    public String getDistrictName(){
        return districtName;
    }
    public void setDistrictName(String districtName){
        this.districtName=districtName;
    }
    }
