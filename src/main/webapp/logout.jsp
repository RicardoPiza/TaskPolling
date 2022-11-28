<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	%>
	<html>
	<link rel="stylesheet" href="style/bootstrap.css">
	<h4 class= "text-center mt-5">Logout realizado, clique <a href = "login.jsp">aqui </a>para logar novamente</h4>
	</html>
	<%
	session.invalidate();
%>