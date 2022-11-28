
<%@ page import="beans.Task" %>
<%@ page import="DAO.TaskDao" %>
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
                    td.excluir(t);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception e){
                out.print("Erro ao inserir!");
            }
        %>
    </body>
</html>

</body>
</html>