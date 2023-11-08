
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: olive;">

	<h1 style="text-decoration: underline;color:white; text-transform: uppercase;font-weight: bold;">User Contacts</h1>
	<table border="5px" style="margin-left: 200px; margin-top: 70px;">
		<h2 style="text-decoration: underline;color: white;text-transform: uppercase;font-weight: bold;">User Details:</h2>
		<tr style="background-color: silver;">
			<th>
				<p>User_Id: ${user.id}</p>
			</th>
			<th>
				<p>User_Name: ${user.name}</p>
			</th>
			<th><p>Email: ${user.email}</p></th>
						<th><p>Email: ${user.phoneNo}</p></th>
			
						<th><p>Address: ${user.address}</p></th>
						
			
	</table>
	<table border="5px" style="margin-left: 200px; margin-top: 70px;">
		<tr style="background-color: orange;">
			<th>contact_Id</th>
			<th>contact Name</th>
			<th>contact Email</th>
			<th>contact phone_No</th>
			<th>contact address</th>
			<th>edit contact</th>
			<th>delete contact</th>
		</tr>
		<c:forEach var="contact" items="${contacts}">
			<tr style="background-color: black;">
				<td style="background-color: white;">${contact.getContactId()}</td>
				<td style="background-color: white;">${contact.getcName()}</td>
				<td style="background-color: white;">${contact.getcEmail()}</td>
				<td style="background-color: white;">${contact.getcPhone()}</td>
				<td style="background-color: white;">${contact.getcAddress()}</td>

				<td style="background-color: white;"><a
					style="text-decoration: none; text-align: center; padding-left: 10px"
					href="updateContact?contactId=${contact.getContactId()}">editContact</a></td>
				<td style="background-color: white;"><a
					style="text-decoration: none; padding-left: 10px"
					href="deleteContact?contactId=${contact.getContactId()}">deleteContact</a></td>

			</tr>

		</c:forEach>

	</table>
</body>
</html>