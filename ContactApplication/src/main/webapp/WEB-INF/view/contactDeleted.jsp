<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:navy;">
	<div
		style="margin: 70px auto; background-color: grey; box-shadow: 0px 0px 10px; width: 600px">
		<button style="background-color: white;margin-left: 40px "><%=request.getAttribute("dele") %></button>
		<br>
		<form action="deleted">
			<input type="submit" value="returnTopage"
				style="width: 100px; height: 30px; background-color: teal; color: white; border-radius: 5px; margin-left: 200px; margin-bottom: 20px">
		</form>
	</div>

</body>
</html>