<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DAO.VotoDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<% try{
                VotoDao vd = new VotoDao();
                if(request.getParameter("nome").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    String nome = request.getParameter("nome").trim();
                    String data = request.getParameter("data").trim();
                    String email = (String)session.getAttribute("email");
                    vd.somaVoto(nome,data,email);
                    %>
            		<script>
            			alert('Votação concluida');
            			window.location.replace("index.jsp");
            		</script>
            		<%
                
                    
                }
            }catch(Exception e){
                out.print("Erro ao votar!");
            }
        %>

</body>
</html>