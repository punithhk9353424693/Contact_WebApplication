<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%-- <table border="5px" style="margin-left: 200px; margin-top: 70px;">
		<tr style="background-color: orange;">
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Contacts</th>
        </tr>
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.contacts}</td>
                </tr>
                <tr>
			<th>Contact_Id</th>
			<th>Contact_Name</th>
			<th>Contact_Emial</th>
			<th>Contact_PhoneNo</th>
			<th>Edit_Contact</th>
			<th>delete_Contact </th>
			
			
		
	</table> --%>
	<body style="background-color: lime;">

	<table border="5px" style="margin-left: 200px; margin-top: 70px;">
		<tr style="background-color: orange;">
			<th>UserId</th>
			<th>User Name</th>
			<th>User Email</th>
			<th>User phone_No</th>
			<th>User address</th>
			<th>User password</th>
		    <th>AddContacts</th>
			<th>ViewContacts</th>
			<th>edit User</th>
			<th>delete User</th>
			<th>Contact_List</th>
		</tr>
		<c:forEach var="user" items="${users}">
			<tr style="background-color: black;">
				<td style="background-color: white;">${user.getId()}</td>
				<td style="background-color: white;">${user.getName()}</td>
				<td style="background-color: white;">${user.getEmail()}</td>
				<td style="background-color: white;">${user.getPhoneNo()}</td>
				<td style="background-color: white;">${user.getAddress()}</td>
				<td style="background-color: white;">${user.getPassword()}</td>
				<td style="background-color: white;"><a
					style="text-decoration: none; text-align: center; padding-left: 10px"
					href="justcontactad?id=${user.getId()}">addContact</a></td>
					<td style="background-color: white;"><a
					style="text-decoration: none; text-align: center; padding-left: 10px"
					href="viewContacts?id=${user.getId()}">ViewContacts</a></td>
				<td style="background-color: white;"><a
					style="text-decoration: none; text-align: center; padding-left: 10px"
					href="updateUser?id=${user.getId()}">edit</a></td>
				<td style="background-color: white;"><a
					style="text-decoration: none; padding-left: 10px"
					href="deleteUser?id=${user.getId()}">delete</a></td>
					<td style="background-color: white;">${user.getContacts()}</td>

			</tr>

		</c:forEach>

	</table>
</body>
</html>