<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: teal;">

	<div
		style="margin: 70px auto; background-color: orange; border-radius: 5px; box-shadow: 0px 0px 10px; width: 390px; height: 400px">
		<h2 style="text-align: center; padding-top: 44px;">Login-Page</h2>
		<form action="thenlogin" >
			<input type="text" placeholder="Enter id" name="id" required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px; border-radius: 4px;"><br>
			<input type="password" placeholder="Enter password" name="password" required="required"
				style="margin-left: 50px; margin-top: 20px; width: 280px; height: 27px; border-radius: 4px;"><br>
			<br> <input type="submit" value="login"
				style="margin-left: 50px; margin-top: 20px; width: 90px; height: 30px; border-radius: 5px; background-color: blue; color: white">
			<a
				style="margin-left: 40px; text-decoration: none; text-shadow: aqua;"
				href="updatePassword">ForgotPassword ?</a> <br> <br>
		</form>
		<hr style="background-color: black; height: 2px">

		<span style="margin-left: 50px">Don't have account?</span>
		<button
			style="background-color: black; width: 90px; height: 30px; border-radius: 5px; margin-left: 210px; margin-bottom: 60px">
			<a href="registerfor" target="blank" style="text-decoration: none; color: white;">register</a>
		</button>
		<br>
	</div>
</body>
</html>