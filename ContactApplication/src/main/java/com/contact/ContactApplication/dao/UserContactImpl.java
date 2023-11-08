package com.contact.ContactApplication.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder.In;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import com.contact.ContactApplication.entity.Contact;
import com.contact.ContactApplication.entity.User;

@Repository
public class UserContactImpl implements UsrrContact {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("vikas");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();
	@Autowired
	User user;
	@Autowired
	Contact contact;

	public User saveUser(User user) {
		et.begin();
		em.persist(user);
		et.commit();
		return user;
	}

	public boolean loginOnce(Integer id, String password) {
		et.begin();
		User user = em.find(User.class, id);
		et.commit();

		if (user.getId() == id && user.getPassword().equals(password)) {
			return true;
		} else {
			return false;
		}
	}

	public User updateUser(Integer id, String name, String email, Long phoneNo, String address,String password) {
		User user=findUserById(id);
		user.setName(name);
		user.setEmail(email);
		user.setPhoneNo(phoneNo);
		user.setAddress(address);
		user.setPassword(password);
		return user;
	}

	public String deleteUser(Integer id) {
		et.begin();
		User user1 = em.find(User.class, id);
		em.remove(user1);
		et.commit();
		return "Id Number "+id+" was Deleted " ;
	}

	public User findUserById(Integer id) {
		et.begin();
		User user = em.find(User.class, id);
		et.commit();
		return user;
	}

	public List<User> findALlUsers() {
		Query query = em.createQuery("select s from User s");
		List<User> users = query.getResultList();
		return users;
	}

	public Contact saveContact(Contact contact) {
		et.begin();
		em.persist(contact);
		et.commit();
		return contact;
	}

	public Contact updateContact(Integer contactId, String cName, String cEmail, Long cPhone, String cAddress) {
		Contact contact = findContactById(contactId);
		contact.setcName(cName);
		contact.setcEmail(cEmail);
		contact.setcAddress(cAddress);
		contact.setcPhone(cPhone);
		Contact contact1 = em.merge(contact);
		em.persist(contact1);

		return contact;
	}

	public String deleteConatact(Integer contactId) {

		Contact contact = findContactById(contactId);
		if (contact != null) {
			contact.getUser().getContacts().remove(contact);
			contact.setUser(null);
			em.remove(contact);
	}			return "Id Number "+contactId+" was Deleted " ;

	}
	public Contact findContactById(Integer contactId) {
		et.begin();
		Contact contact = em.find(Contact.class, contactId);
		et.commit();
		return contact;
	}

	public List<Contact> findALlContacts() {
		Query query = em.createQuery("select s from Contact s");
		List<Contact> contacts = query.getResultList();
		return contacts;
	}

	public User updatePassword(Integer userId, String password) {
		et.begin();
		User user = em.find(User.class, userId);
		user.setPassword(password);
		em.persist(user);
		et.commit();
		return user;
	}

	public User deletAllContacts(Integer id) {
		User user = findUserById(id);
		List<Contact> contacts = user.getContacts();
		if (user != null) {
			for (Contact contact : contacts) {
				em.remove(contact);
			}
			
		}
		return user;

	}

}
