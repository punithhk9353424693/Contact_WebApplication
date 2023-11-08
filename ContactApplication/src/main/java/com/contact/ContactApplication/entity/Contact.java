package com.contact.ContactApplication.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ManyToAny;
import org.springframework.stereotype.Component;
@Entity
@Component
public class Contact {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int contactId;
	private String cName;
	private String cEmail;
	private String cAddress;
	
	private Long cPhone;
	
	@ManyToOne
	private  User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcEmail() {
		return cEmail;
	}
	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}
	public String getcAddress() {
		return cAddress;
	}
	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}
	
	public Long getcPhone() {
		return cPhone;
	}
	public void setcPhone(Long cPhone) {
		this.cPhone = cPhone;
	}
	@Override
	public String toString() {
		return "Contact [contactId=" + contactId + ", cName=" + cName + ", cEmail=" + cEmail + ", cAddress=" + cAddress
				+ ", cPhone=" + cPhone + "]";
	}
	
}
