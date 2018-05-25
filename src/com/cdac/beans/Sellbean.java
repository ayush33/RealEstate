package com.cdac.beans;
import java.sql.*;

import javax.persistence.Column;

public class Sellbean 
{
	
	
  public int id;
  public String name;

public String contact;
  public String for1;
  public String type;
  public String price;
  public String area;
  public String bhk;
  public String furnished;
  public String description;
   public String city;
   public Date date;
   public int uid;
   @Column(columnDefinition = "LONGBLOB") 
   public byte[] photo;
  public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public int getUid() {
	return uid;
}
public void setUid(int uid) {
	this.uid = uid;
}
public byte[] getPhoto() {
	return photo;
}
public void setPhoto(byte[] photo) {
	this.photo = photo;
}
 public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getFor1() {
	return for1;
}
public void setFor1(String for1) {
	this.for1 = for1;
}
public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getPrice() {
	return price;
}
public void setPrice(String price) {
	this.price = price;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public String getBhk() {
	return bhk;
}
public void setBhk(String bhk) {
	this.bhk = bhk;
}
public String getFurnished() {
	return furnished;
}
public void setFurnished(String furnished) {
	this.furnished = furnished;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}

  
}
