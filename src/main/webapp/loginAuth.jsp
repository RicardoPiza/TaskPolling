<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="DAO.UserDao" %>
<%@ page import="beans.User" %>
<%
String email = request.getParameter("email");
String senha = request.getParameter("senha");
UserDao ud = new UserDao();
User u = new User();

if (email != null && senha != null && !email.isEmpty() && !senha.isEmpty() &&ud.validarLogin(email, senha)==true) {
	
	u.setEmail(email);
	u.setSenha(senha);
	session.setAttribute("email", email);
	response.sendRedirect("index.jsp");
}
else{
	%>
		<script>
			alert('Senha ou usuário incorretos');
			window.location.replace("login.jsp");
		</script>
	<%
}

%>