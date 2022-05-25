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
		<title>Listar Produtos</title>
	</head>
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
	<body>
	<h1>Deletar Produto</h1>
		<div class="container">
				<form action="DeletarController"  method="post" >
					<div class="form-group">
						<label>ID</label><input type="number" id="id" 
						name="id" class="form-control" style="width: 50%"
						placeholder="Digite o id do produto"/>
					</div>
					<div class="form-group">
						<label>Nome</label><input type="text" id="nome" 
						name="nome" class="form-control" style="width: 50%"
						placeholder="Digite o nome do produto"/>
					</div>
				<button type="submit" class="btn btn-danger">Deletar Produto</button>
			</form>
			</div>
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
	  			<strong>Produto ${produto.getNome()} deletado com sucesso!!</strong>
	  			<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		<footer>
		<p class = "copyright">&copy; Copyright Matheus Zordan</p>
		</footer>
	</body>
</html>