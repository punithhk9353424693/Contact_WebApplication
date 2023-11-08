<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: yellow;">
	<div
		style="margin: 70px auto; background-color:fuchsia; border-radius: 5px; box-shadow: 0px 0px 20px; width: 390px; height: 400px;
		">
		>
		<h2 style="text-align: center;color: black; ">Add-Contact</h2>
		
		<form action="addnow">
		    <input type="text"  name="id" placeholder="Enter user id"
		    style="margin-left: 50px; margin-top: 0px; width: 280px; height: 27px;
				box-shadow: 0px 0px 2px">
				<br>				<br>
				
			<input type="text" placeholder="Enter Name" name="cName"
				required="required"
				style="margin-left: 50px; margin-top: 0px; width: 280px; height: 27px;
				box-shadow: 0px 0px 2px"><br>
			<input type="email" placeholder="Enter Email" name="cEmail"
				required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px;
					box-shadow: 0px 0px 2px"><br>
			<input type="tel" placeholder="Enter Phone no" name="cPhone"
				required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px;
					box-shadow: 0px 0px 2px"><br>
			<input type="text" placeholder="Enter your Address" name="cAddress"
				required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px;
					box-shadow: 0px 0px 2px"><br>
			<br>
			<br> <input type="submit" value="addContact"
				style="background-color:maroon; width: 190px; height: 30px; border-radius: 5px; margin-left: 150px; color: white
				;">

		</form>
	</div>
</body>
</html>