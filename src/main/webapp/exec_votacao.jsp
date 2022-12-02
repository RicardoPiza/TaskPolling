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
                if(request.getParameter("id").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    String data = request.getParameter("data");
                    int id = Integer.parseInt(request.getParameter("id"));
                    vd.somaVoto(id,data);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception e){
                out.print("Erro ao votar!");
            }
        %>

</body>
</html>