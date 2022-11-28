<%@ page import="beans.Task" %>
<%@ page import="DAO.TaskDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title></head>
    <body>
        <% try{
                Task t = new Task();
                TaskDao td=new TaskDao();
                if(request.getParameter("id").equals("")){
                    response.sendRedirect("cadastro.jsp");
                }else{
                    t.setId(Integer.parseInt(request.getParameter("id")));
                    t.setNome(request.getParameter("nome"));
                    t.setDescricao(request.getParameter("descricao"));
                    t.setData1(request.getParameter("data1"));
                    t.setData2(request.getParameter("data2"));
                    t.setData3(request.getParameter("data3"));
                    t.setData4(request.getParameter("data4"));
                    t.setData5(request.getParameter("data5"));
                    t.setData6(request.getParameter("data6"));
                    t.setData7(request.getParameter("data7"));
                    t.setData8(request.getParameter("data8"));
                    t.setData9(request.getParameter("data9"));
                    t.setData10(request.getParameter("data10"));
                    t.setHora1(request.getParameter("hora1"));
                    t.setHora2(request.getParameter("hora2"));
                    t.setHora3(request.getParameter("hora3"));
                    t.setHora4(request.getParameter("hora4"));
                    t.setHora5(request.getParameter("hora5"));
                    t.setHora6(request.getParameter("hora6"));
                    t.setHora7(request.getParameter("hora7"));
                    t.setHora8(request.getParameter("hora8"));
                    t.setHora9(request.getParameter("hora9"));
                    t.setHora10(request.getParameter("hora10"));
                    
                    td.alterar(t);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception e){ out.print("Erro ao inserir!"); }
        %>
    </body>
</html>
