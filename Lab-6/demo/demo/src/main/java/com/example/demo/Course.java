package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Course {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private int creditId;
    private String name;
    private String nameVn; // Vietnamese course name (optional)
    private int creditTheory; // Theory credits (optional)
    private int creditLab; // Lab credits (optional)
    private String description;

    // Getters and Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
    
    public int getCreditId() {
        return creditId;
    }

    public void setCreditId(int creditId) {
        this.creditId = creditId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNameVn() {
        return nameVn;
    }

    public void setNameVn(String nameVn) {
        this.nameVn = nameVn;
    }

    public int getCreditTheory() {
        return creditTheory;
    }

    public void setCreditTheory(int creditTheory) {
        this.creditTheory = creditTheory;
    }

    public int getCreditLab() {
        return creditLab;
    }

    public void setCreditLab(int creditLab) {
        this.creditLab = creditLab;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
