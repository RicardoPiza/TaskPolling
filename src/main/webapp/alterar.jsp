<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="style/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Alterar aluno</title></head>
    <body>
    <div class = "jumbotron d-flex align-items-center">
		<div class = "container text-center">
	<h2 class="mt-3 mb-2">Alteração</h2>
			<h6><em>Crie sua task e compartilhe a votação com seus colegas</em></h6>
		
	<div class="text-right mr-3">
		<a href="logout.jsp">Logout</a>
	</div>
	</div>
	</div>
    <div class="form-row mt-5">
    	<div class="text-center container" >
	        <form action="exec_alterar.jsp">
	            <label class="mr-2">ID: </label>
	            <input type="number" name="id" readonly="true"
	            value="<%=request.getParameter("id")%>"><br>
	            <label class="mr-2">Nome: </label>
	            <input type="text" name="nome"
	            value="<%=request.getParameter("nome")%>"><br>
	            <label class="mr-2 align-top">Descrição: </label>
	            <textarea name="descricao" cols="30" rows="1"><%=request.getParameter("descricao")%></textarea><br>
	            <label class="mr-2">Data/Hora 1: </label>
	            <input type="date" name="data1" value="<%=request.getParameter("data1")%>" class="mr-4">
	            <input type="time" name="hora1" value="<%=request.getParameter("hora1")%>"><br>
	            <label class="mr-2">Data/Hora 2: </label>
	            <input type="date" name="data2" value="<%=request.getParameter("data2")%>" class="mr-4">
	            <input type="time" name="hora2"value="<%=request.getParameter("hora2")%>"><br>
	            <label class="mr-2">Data/Hora 3: </label>
	            <input type="date" name="data3" value="<%=request.getParameter("data3")%>"class="mr-4">
	            <input type="time" name="hora3"value="<%=request.getParameter("hora3")%>"><br>
	            <label class="mr-2">Data/Hora 4: </label>
	            <input type="date" name="data4" value="<%=request.getParameter("data4")%>"class="mr-4">
	            <input type="time" name="hora4"value="<%=request.getParameter("hora4")%>"><br>
	            <label class="mr-2">Data/Hora 5: </label>
	            <input type="date" name="data5" value="<%=request.getParameter("data5")%>"class="mr-4">
	            <input type="time" name="hora1"value="<%=request.getParameter("hora5")%>"><br>
	            <label class="mr-2">Data/Hora 6: </label>
	            <input type="date" name="data6" value="<%=request.getParameter("data6")%>"class="mr-4">
	            <input type="time" name="hora6"value="<%=request.getParameter("hora6")%>"><br>
	            <label class="mr-2">Data/Hora 7: </label>
	            <input type="date" name="data7" value="<%=request.getParameter("data7")%>"class="mr-4">
	            <input type="time" name="hora7"value="<%=request.getParameter("hora7")%>"><br>
	            <label class="mr-2">Data/Hora 8: </label>
	            <input type="date" name="data8" value="<%=request.getParameter("data8")%>"class="mr-4">
	            <input type="time" name="hora8"value="<%=request.getParameter("hora8")%>"><br>
	            <label class="mr-2">Data/Hora 9: </label>
	            <input type="date" name="data9" value="<%=request.getParameter("data9")%>"class="mr-4">
	            <input type="time" name="hora9"value="<%=request.getParameter("hora9")%>"><br>
	            <label class="mr-1">Data/Hora 10:</label>
	            <input type="date" name="data10" value="<%=request.getParameter("data10")%>"class="mr-4">
	            <input type="time" name="hora10"value="<%=request.getParameter("hora10")%>"><br>
	            <button type="submit" class="btn btn-success ml-5 mt-3">Alterar</button>
	            <a href="index.jsp" ><button class="btn btn-danger ml-4 mt-3">Cancelar</button>
	        </form></a>
    	</div>
    	</div>
    </body>
</html>
