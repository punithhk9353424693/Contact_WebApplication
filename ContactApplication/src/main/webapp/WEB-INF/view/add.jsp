
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
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

			</tr>

		</c:forEach>

	</table>
</body>
</html>