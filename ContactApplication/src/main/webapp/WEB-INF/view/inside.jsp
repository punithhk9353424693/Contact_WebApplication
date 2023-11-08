<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: aqua;">
	<h1>Registration Success full !!!!!!!!</h1>
	 <button
		style="background-color: black; color: white; width: 1000px; height: 40px">
    <h1 style="font-size: large;">your Login User_Id  is :-<%=request.getAttribute("out")%></button></h1>
	<br>
	<br><form action="justin">
	<input type="submit" value="go ToLogin"
		style="background-color: olive; width: 190px; height: 30px; border-radius: 5px; margin-left: 150px; color: white;">
</form> 
</body>
</html> 