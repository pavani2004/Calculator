<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Calculator</title>
</head>
<body>
	<%
		// Retrieve values from form submission
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		String operation = request.getParameter("operation");
		
		// Perform the calculation based on the button that was clicked
		int result = 0;
		if (operation.equals("add")) {
			result = num1 + num2;
		} else if (operation.equals("subtract")) {
			result = num1 - num2;
		} else if (operation.equals("multiply")) {
			result = num1 * num2;
		} else if (operation.equals("divide")) {
			result = num1 / num2;
		}
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/calcidb?useSSL=false","root","1234");
String q="insert into calci(num1,operation,num2,result) values(?,?,?,?)";
PreparedStatement stm=con.prepareStatement(q);
stm.setString(1, String.valueOf(num1));
stm.setString(2,operation);
stm.setString(3, String.valueOf(num2));
stm.setString(4, String.valueOf(result));
int x=stm.executeUpdate();
System.out.println("Data upadated successfully..."+x);
	%>
	<h1>Result: <%= result %></h1>
</body>
</html>
