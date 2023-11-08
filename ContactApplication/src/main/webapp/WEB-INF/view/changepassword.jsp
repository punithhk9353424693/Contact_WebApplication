<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: purple;">
	<div
		style="margin: 70px auto; background-color: grey; box-shadow: 0px 0px 10px; width: 500px;height: 200px;border-radius: 5px">
		<form action="passwordupadating">
			<input type="text" placeholder="Enter id" name="userId"
				required="required"
				style="margin-left: 80px; margin-top: 20px; width: 280px; height: 27px; box-shadow: 0px 0px 5px"><br>
			<input type="password" placeholder="Enter new Password"
				name="password" required="required"
				style="margin-left: 80px; margin-top: 20px; width: 280px; height: 27px; box-shadow: 0px 0px 5px"><br>
			<br> <input type="submit" value="update"
				style="background-color: olive; width: 190px; height: 30px; border-radius: 5px; margin-left: 170px; color: white">
		</form>
	</div>
</body>
</html>