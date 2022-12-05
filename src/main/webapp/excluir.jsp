
<%@ page import="beans.Task" %>
<%@ page import="beans.Voto" %>
<%@ page import="DAO.TaskDao" %>
<%@ page import="DAO.VotoDao" %>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title></head>
    <body>
        <% try{
                Task t = new Task();
                TaskDao td=new TaskDao();
                Voto v = new Voto();
                VotoDao vd= new VotoDao();
                if(request.getParameter("id").equals("")){
                    response.sendRedirect("cadastro.jsp");
                }else{
                    t.setId(Integer.parseInt(request.getParameter("id")));
                    v.setId(Integer.parseInt(request.getParameter("id")));
                    td.excluir(t);
                    vd.excluirVotacao(request.getParameter("nome").trim(),(String)session.getAttribute("email"));
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