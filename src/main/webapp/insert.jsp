<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.User" %>
<%@ page import="DAO.UserDao" %>

	<%
	try{
			User u = new User();
			UserDao ud = new UserDao();
			if(request.getParameter("email").equals("")){
		response.sendRedirect("cadastro.jsp");
			}else{
		u.setEmail(request.getParameter("email"));
		u.setNome(request.getParameter("nome"));
		u.setSenha(request.getParameter("senha"));
			}
		if(ud.validarCadastro(request.getParameter("email"))==true){
		ud.inserir(u);
	%>
			<script>
				alert('Cadastro efetuado com sucesso');
				window.location.replace("login.jsp");
			</script>
			<%
			}
		else{
			%>
			<script>
				alert('E-mail já esta cadastrado');
				window.location.replace("cadastro.jsp");
			</script>
			<%
		}
			
		
	}
	catch (Exception e){
		out.print(e.getMessage());
	}
	%>
