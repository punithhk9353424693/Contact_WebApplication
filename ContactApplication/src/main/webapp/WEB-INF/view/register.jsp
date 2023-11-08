<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: maroon;">
	<div
		style="margin: 70px auto; background-color: white; border-radius: 5px; box-shadow: 0px 0px 10px; width: 390px; height: 400px;
		background-color: silver;">
		>
		<h2 style="text-align: center;color: black; ">User-SignUp-Page</h2>
		
		<form action="registerPage">

			<input type="text" placeholder="Enter Name" name="name"
				required="required"
				style="margin-left: 50px; margin-top: 0px; width: 280px; height: 27px;
				box-shadow: 0px 0px 5px"><br>
			<input type="email" placeholder="Enter Email" name="email"
				required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px;
					box-shadow: 0px 0px 5px"><br>
			<input type="tel" placeholder="Enter Phone no" name="phoneNo"
				required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px;
					box-shadow: 0px 0px 5px"><br>
			<input type="text" placeholder="Enter your Address" name="address"
				required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px;
					box-shadow: 0px 0px 5px"><br>
			<input type="password" placeholder="Enter unique Passwaord" name="password"
				required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px;
					box-shadow: 0px 0px 5px"><br>
			<br> <input type="submit" value="register"
				style="background-color:olive; width: 190px; height: 30px; border-radius: 5px; margin-left: 150px; color: white
				;">

		</form>
	</div>
</body>
</html>