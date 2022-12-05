<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="beans.Task"%>
<%@ page import="DAO.TaskDao"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style/style.css">
<link rel="stylesheet" href="style/bootstrap.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
<link rel="shortcut icon" href="#">
<title>Votar</title>
</head>
<body>
	<script>
		function confirma(nome, data) {
			var resp = confirm('Confirma votação?');
			if (resp) {
				window.location.href = "exec_votacao.jsp?nome=" + nome + "&data="
						+ data;
			}
		}
	</script>
	<div class="jumbotron d-flex align-items-center">
		<div class="container text-center">
			<h2 class="mt-3 mb-2">Votação</h2>
			<h6>
				<em>Crie sua task e compartilhe a votação com seus colegas</em>
			</h6>

			<div class="text-right mr-3">
				<a href="logout.jsp">Logout</a>
			</div>
		</div>
	</div>
	<div class="container-sm">
		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>Nome</th>
				<th>Descricao</th>
				<th>Data/Hora 1</th>
				<th>Data/Hora 2</th>
				<th>Data/Hora 3</th>
				<th>Data/Hora 4</th>
				<th>Data/Hora 5</th>
				<th>Data/Hora 6</th>
				<th>Data/Hora 7</th>
				<th>Data/Hora 8</th>
				<th>Data/Hora 9</th>
				<th>Data/Hora 10</th>
			</tr>
			<%
			TaskDao td = new TaskDao();
			Task t = new Task();
			String nome = request.getParameter("nome");
			out.print("<tr><td>");
			out.print(request.getParameter("id"));
			out.print("</td><td>");
			out.print(request.getParameter("nome"));
			out.print("</td><td>");
			out.print(request.getParameter("descricao"));
			out.print("</td><td>");
			out.print(request.getParameter("data1") + " / " + request.getParameter("hora1"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data1 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data2") + request.getParameter("hora2"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data2 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data3") + request.getParameter("hora3"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data3 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data4") + request.getParameter("hora4"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data4 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data5") + request.getParameter("hora5"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data5 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data6") + request.getParameter("hora6"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data6 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data7") + request.getParameter("hora7"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data7 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data8") + request.getParameter("hora8"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data8 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data9") + request.getParameter("hora9"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data9 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			out.print(request.getParameter("data10") + request.getParameter("hora10"));
			out.print("<br><button class = 'btn btn-warning ml-4' title = 'Votar' href='javascript:func()' onclick='confirma(&quot " + nome
					+ "&quot," + "&quot data10 &quot" + ")'><i class = 'fa fa fa-check'></i></button></td><td>");
			%>

		</table>
		<a class="btn btn-danger align-center" href="index.jsp">Voltar</a>
	</div>

</body>
</html>