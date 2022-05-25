<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  		
  		<link rel = "stylesheet" href="css/reset.css">
  		<link rel="stylesheet" href="css/style.css">
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Feito</title>
</head>
<body>
<header>
			<div class="caixa">
				<nav class="navbar navbar-light bg-light">
  			<div class="container-fluid">
    		
      		<img src="imagens/logo.png" alt="" width="50" height="35" class="d-inline-block align-text-top">
      Mercado Tradição
    
  			</div>
				</nav>
			</div>
		</header>
	<p> Cadastro Feito com Sucesso!!</p>
	<br>
	<br>
	<table class="table table-dark table-striped">
		<thead>
			<tr>
				<th scope="col">Nome</th>
				<th scope="col">Tipo</th>
				<th scope="col">Marca</th>
				<th scope="col">Preço</th>
				<th scope="col">Data Cadastro</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			<th scope="col"> ${produto.getNome()}</th>
				<th scope="col">${produto.getTipo()}</th>
				<th scope="col">${produto.getMarca()}</th>
				<th scope="col">${produto.getPreco()}</th>
				<th scope="col">${produto.getDatacadastro()}</th>
		</tr>
	</tbody>
	</table>
	<br>
	<br>
	<br>
	<h2>Deseja cadastrar uma novo produto?</h2>
	<a href="formNovoProduto.jsp"> Novo Cadastro</a>
</body>
</html>