<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.Task" %>
<%@ page import="DAO.TaskDao" %>
<%@page import="java.util.ArrayList"%>
<%

	String user = (String) session.getAttribute("email");
	if(user == null){
		%>
		<script>
			alert('Você precisa estar logado');
			window.location.replace("login.jsp");
		</script>
		<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet" href="style/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">


<title>Task Votation</title>
</head>
<body>
	<script>
            function conf(id){
                var resp=confirm('Deseja remover o id '+id+'?');
                if(resp){
                    window.location.href="excluir.jsp?id="+id;
                }       
            }
            function link(id){
                var resp=alert('Copie esse link e envie para as pessoas que participarão da votação:\n ');
                window.location.href="votacao.jsp?id="+id;
            }
        </script>
	<div class = "jumbotron d-flex align-items-center">
		<div class = "container text-center">
	<h2 class="mt-3 mb-2">Bem vindo, <%out.print(user); %></h2>
			<h6><em>Crie sua task e compartilhe a votação com seus colegas</em></h6>
		
	<div class="text-right mr-3">
		<a href="logout.jsp">Logout</a>
	</div>
	</div>
	</div>
	<table class="table table-hover"><tr><th>ID</th><th>Nome</th><th>Descricao</th>
                <th>Data/Hora 1</th><th>Data/Hora 2</th><th>Data/Hora 3</th><th>Data/Hora 4</th><th>Data/Hora 5</th>
                <th>Data/Hora 6</th><th>Data/Hora 7</th><th>Data/Hora 8</th><th>Data/Hora 9</th><th>Data/Hora 10</th></tr>
            <%
                TaskDao td= new TaskDao();
            	Task t = new Task();
                ArrayList<Task> lista=td.buscarTodos();
                for(int i=0;i<lista.size();i++){
                    out.print("<tr><td>");
                    out.print(lista.get(i).getId());
                    out.print("</td><td>");
                    out.print(lista.get(i).getNome());
                    out.print("</td><td>");
                    out.print(lista.get(i).getDescricao());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData1()+" / "+lista.get(i).getHora1());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData2()+" / "+lista.get(i).getHora2());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData3()+" / "+lista.get(i).getHora3());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData4()+" / "+lista.get(i).getHora4());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData5()+" / "+lista.get(i).getHora5());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData6()+" / "+lista.get(i).getHora6());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData7()+" / "+lista.get(i).getHora7());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData8()+" / "+lista.get(i).getHora8());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData9()+" / "+lista.get(i).getHora9());
                    out.print("</td><td>");
                    out.print(lista.get(i).getData10()+" / "+lista.get(i).getHora10());
                    out.print("</td><td>");
                    out.print("</td><td><a href='alterar.jsp?");
                    out.print("id="+lista.get(i).getId()+"&nome="+lista.get(i).getNome());
                    out.print("&descricao="+lista.get(i).getDescricao());
                    out.print("'><button class='btn btn-primary mr-2' title = 'Alterar'><i class='fa-thin fa fa fa-pen'></i></button></a>");
                    out.print("<button class = 'btn btn-danger mr-2' title = 'Excluir' href='javascript:func()' ");
                    out.print("onclick='conf("+lista.get(i).getId()+")'><i class = 'fa fa fa-trash'></i></button>");
                    out.print("<a class = 'btn btn-warning mr-2' title = 'Abrir Votação' href='votacao.jsp?id="+lista.get(i).getId()+
                    "&nome="+lista.get(i).getNome()+"&descricao="+lista.get(i).getDescricao()+"&hora1="+lista.get(i).getHora1()+
                    "&hora2="+lista.get(i).getHora2()+"&hora3="+lista.get(i).getHora3()+"&hora4="+""+lista.get(i).getHora4()+
                    "&hora5="+lista.get(i).getHora5()+"&hora6="+lista.get(i).getHora6()+"&hora7="+lista.get(i).getHora7()+
                    "&hora8="+lista.get(i).getHora8()+"&hora9="+lista.get(i).getHora9()+"&hora10="+lista.get(i).getData10()+
                    "&data1="+lista.get(i).getData1()+
                    "&data2="+lista.get(i).getData2()+"&data3="+lista.get(i).getData3()+"&data4="+""+lista.get(i).getData4()+
                    "&data5="+lista.get(i).getData5()+"&data6="+lista.get(i).getData6()+"&data7="+lista.get(i).getData7()+
                    "&data8="+lista.get(i).getData8()+"&data9="+lista.get(i).getData9()+"&data10="+lista.get(i).getData10()+
                    "'><i class = 'fa fa fa-check'></i></a>");
                    out.print("</td></tr>");
                }
            %>
            
	 </table>
	<form action="" method="post" enctype="">
            <fieldset>
                <div class="form-row">
                    <div class="text-center">
                    </div>
                </div>
                <div id="dynamic_field">
                    <div class="col">
                        <td><button type="button" name="add" id="add" class="btn btn-success ml-2"><i > Criar Nova Task</i></button></td>
                    </div>
                </div>
                <br>
                <br>
                </fieldset>
        	</form>
        	
   <div class="col"></div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
    <script>
    $('#meuModal').on('shown.bs.modal', function () {
    	  $('#meuInput').trigger('focus')
    	});
        $(document).ready(function() {
            var i = 1;
            $('#add').click(function() {
                i++;
                $('#dynamic_field').append('<form action="insertTask.jsp"><div  id="row' + i + '"> <input class = "ml-4 mt-4 mb-4" name="nomeTask" id="'
                		+ i + '" required><label class = "mt-4 mb-4 ml-4">Nome da task</label></div><div  id="row"><textarea  class = "ml-4" name="descricao" id="' 
                        + i + '" cols="25" rows="1" required></textarea><label class = "ml-4">Descrição</label></div><div>'+
                        " "+' <input class = "ml-3 mt-3 mb-3" type = "date" name="data1" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora1" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 1</label><input class = "ml-3 mt-3 mb-3" type = "date" name="data2" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora2" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 2</label></div><div><input class = "ml-3 mt-3 mb-3" type = "date" name="data3" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora3" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 3</label><input class = "ml-3 mt-3 mb-3" type = "date" name="data4" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora4" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 4</label></div><div><input class = "ml-3 mt-3 mb-3" type = "date" name="data5" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora5" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 5</label><input class = "ml-3 mt-3 mb-3" type = "date" name="data6" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora6" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 6</label></div><div><input class = "ml-3 mt-3 mb-3" type = "date" name="data7" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora7" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 7</label><input class = "ml-3 mt-3 mb-3" type = "date" name="data8" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora8" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 8</label></div><div><input class = "ml-3 mt-3 mb-3" type = "date" name="data9" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora9" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 9</label><input class = "ml-3 mt-3 mb-3" type = "date" name="data10" id="'
                		+ i + '" ><input class = "ml-3 mt-3 mb-3" type = "time" name="hora10" id="'
                		+ i + '" ><label class = "mt-4 mb-4 ml-4">Data 10</label> </div><div class="form-row"><br><div class="col"><button type="submit" '+" "
                		+' class="btn btn-primary mt-4 ml-4" value="Save"><i>Salvar</i></button></div> </div></form><button name="add" class="btn btn-danger btn_remove ml-4 mt-4" id="' 
                		+ i + '"><i>Cancelar</i></button>');
            });
            $(document).on('click', '.btn_remove', function() {
                var button_id = $(this).attr("id");

                $('#row' + button_id).remove();
            });
        });
    </script>
</body>
</html>