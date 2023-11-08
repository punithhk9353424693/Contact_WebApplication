package com.contact.ContactApplication.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.contact.ContactApplication.dao.UsrrContact;
import com.contact.ContactApplication.entity.Contact;
import com.contact.ContactApplication.entity.User;

@Controller
public class ContactController {
	@Autowired
	UsrrContact cu;
	@Autowired
	Contact contact;
	@Autowired
	User user;

	@RequestMapping("/in")
	public String oksir() {
		return "home";
	}

	@RequestMapping("/thenlogin")
	public ModelAndView justLog(@RequestParam("id") Integer id, @RequestParam("password") String password) {
		ModelAndView mav = new ModelAndView();
		User user = cu.findUserById(id);
		if (user == null || cu.loginOnce(id, password) == false) {
			mav.setViewName("unsucces");
			return mav;
		} else if (cu.loginOnce(id, password) == true) {
			mav.setViewName("login");
			return mav;
		} else {
			mav.setViewName("unsucces");
			return mav;
		}
	}

	@RequestMapping("/login")
	public ModelAndView findAllUsersss() {
		ModelAndView mav = new ModelAndView();
		java.util.List<User> users = cu.findALlUsers();
		mav.addObject("users", users);
		mav.setViewName("add");
		return mav;
	}

	@RequestMapping("/registerfor")
	public ModelAndView set(Model res) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("register");
		return mav;
	}

	@RequestMapping(value = "/registerPage")
	public ModelAndView register(@ModelAttribute("user") User user) {
		ModelAndView mav = new ModelAndView();
		User user5 = cu.saveUser(user);
		mav.addObject("out", user5.getId());
		mav.setViewName("inside");
		return mav;
	}

	@RequestMapping("/updatePassword")
	public String justGo() {
		return "changepassword";
	}

	@RequestMapping("/passwordupadating")
	public ModelAndView update(@RequestParam("userId") Integer userId, @RequestParam("password") String password) {
		ModelAndView mav = new ModelAndView();
		User user = cu.updatePassword(userId, password);
		mav.addObject("ok", user);
		mav.setViewName("changed");
		return mav;

	}

	@RequestMapping(value = "/justin")
	public String inner() {
		return "home";
	}

	@RequestMapping("/updateUser")
	public ModelAndView redirect() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("userupdate");
		return mav;
	}

	@RequestMapping("/changeUser")
	public ModelAndView updateUser(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		Integer id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		Long phoneNo = Long.parseLong(req.getParameter("phoneNo"));
		String address = req.getParameter("address");
		String password=req.getParameter("password");
		User user = cu.updateUser(id, name, email, phoneNo, address,password);
		mav.addObject("contact", contact);
		mav.setViewName("contactChanged");
		return mav;
	}

	@RequestMapping("/gotologin")
	public String changed() {
		return "home";
	}

	@RequestMapping("/deleteUser")
	public ModelAndView deleteUserOne(@RequestParam Integer id) {
		ModelAndView mav = new ModelAndView();
		User user = cu.findUserById(id);
		if (user.getContacts()!= null) {
			User user2=cu.deletAllContacts(id);
			String s = cu.deleteUser(user2.getId());
			mav.addObject("del", s);
			mav.setViewName("userdelete");
			return mav;
		}else if(user.getContacts()==null) {
			String s1=cu.deleteUser(id);
			mav.addObject("del", s1);
			mav.setViewName("userdelete");
			
		}
		return mav;

	}

	@RequestMapping("/deleted")
	public ModelAndView returnTopage() {
		ModelAndView mav = new ModelAndView();
		java.util.List<User> users = cu.findALlUsers();
		mav.addObject("users", users);
		mav.setViewName("add");
		return mav;
	}

	@RequestMapping("/viewUser")
	public ModelAndView forUser() {
		ModelAndView mav = new ModelAndView();
		java.util.List<User> users = cu.findALlUsers();
		mav.addObject("users", users);
		mav.setViewName("add");
		return mav;
	}

	@RequestMapping("/justcontactad")
	public ModelAndView justadd(@RequestParam Integer id, Model model) {
		ModelAndView mav = new ModelAndView();

		User user = cu.findUserById(id);
		contact.setUser(user); // Set the User for the Contact
		mav.addObject("user", user.getId());
		mav.setViewName("contactadd");
		return mav;
	}

	@RequestMapping("/addnow")
	public ModelAndView addContact(@ModelAttribute("contact") Contact contact, HttpServletRequest req,
			HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		cu.saveContact(contact);
		Integer id = Integer.parseInt(req.getParameter("id"));
		User user = cu.findUserById(id);
		if (user != null) {

			contact.setUser(user);
			Contact savedContact = cu.saveContact(contact);
			if (user.getContacts() == null) {
				user.setContacts(new ArrayList<Contact>());
			}
			user.getContacts().add(savedContact);
			cu.saveUser(user);
			mav.addObject("user", user);
			mav.addObject("contacts", user.getContacts());
			mav.setViewName("contactAdded");
			return mav;
		} else {
			mav.setViewName("userNotFound");

		}

		return mav;

	}

	@RequestMapping("/viewContacts")
	public ModelAndView itsViewTime(@RequestParam("id") Integer id) {
		ModelAndView mav = new ModelAndView();
		try {
			User user = cu.findUserById(id);
			if (user != null) {
				List<Contact> contacts = user.getContacts();
				mav.addObject("user", user);
				mav.addObject("contacts", contacts);
				mav.setViewName("contactsdetails");
				return mav;
			} else {
				mav.setViewName("userNotFound");
				return mav;
			}
		} catch (Exception e) {
			mav.addObject("error", "An error occurred while fetching user contacts.");
			mav.setViewName("errorPage"); // Create an error page to display the error message.
		}
		return mav;
	}

	@RequestMapping("/updateContact")
	public ModelAndView contactUp() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contactUpdatePage");
		return mav;
	}

	@RequestMapping("/changeContact")
	public ModelAndView changeContact(HttpServletRequest req, HttpServletResponse res) {
		ModelAndView mav = new ModelAndView();
		Integer contactId = Integer.parseInt(req.getParameter("contactId"));
		String cName = req.getParameter("cName");
		String cEmail = req.getParameter("cEmail");
		Long cPhone = Long.parseLong(req.getParameter("cPhone"));
		String cAddress = req.getParameter("cAddress");
		Contact contact = cu.updateContact(contactId, cName, cEmail, cPhone, cAddress);
		mav.addObject("contact", contact);
		mav.setViewName("contactChanged");
		return mav;
	}

	@RequestMapping("/deleteContact")
	public ModelAndView contactDelete(@RequestParam Integer contactId) {
		ModelAndView mav = new ModelAndView();
		String s = cu.deleteConatact(contactId);
		mav.addObject("dele", s);

		mav.setViewName("contactDeleted");
		return mav;
	}

}