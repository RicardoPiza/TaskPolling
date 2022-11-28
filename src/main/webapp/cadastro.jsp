<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task Votation</title>
<link rel="stylesheet" href="style/bootstrap.css">
</head>
<body>
	<div class = "jumbotron d-flex align-items-center">
		<div class = "container text-center">
		<h1>Sistema de votação de reuniões</h1><br><br><br><br><br><br>
			<form action="insert.jsp" method= "post">			
				<label>Nome</label><br>
				<input type = "text" name ="nome" required><br>
				<label>E-mail</label><br>
				<input type = "text" name ="email"required><br>
				<label>Senha</label><br>
				<input type = "password" name ="senha" required><br><br>
				<button type= "submit" class = "btn btn-primary" >Cadastrar</button>
			</form>
		</div>
	</div>
</body>
</html>