package com.contact.ContactApplication.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestBody;

import com.contact.ContactApplication.entity.Contact;
import com.contact.ContactApplication.entity.User;

@Repository
public interface UsrrContact {

	public User saveUser(User user);

	public User updateUser(Integer id, String name, String email, Long phoneNo, String address,String password);

	public String deleteUser(Integer id);

	public User findUserById(Integer id);

	public List<User> findALlUsers();

	public Contact saveContact(Contact contact);

	public Contact updateContact(Integer contactId, String cName, String cEmail, Long cPhone, String cAddress);

	public String deleteConatact(Integer contactId);

	public Contact findContactById(Integer contactId);

	public List<Contact> findALlContacts();

	public boolean loginOnce(Integer id, String password);

	public User deletAllContacts(Integer id);

	public User updatePassword(Integer userId, String password);
}
