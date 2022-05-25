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
<title>Atualizar Produtos</title>
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
	
	<main>
		<h1>Atualizar Produto</h1>
		<div class="container">
			<form action="AtualizarController"  method="post" >
				<div class="form-group">
					<label>Nome</label><input type="text" id="nome" 
					name="nome" class="form-control" style="width: 50%"
					placeholder="Digite o novo nome do produto"/>
				</div>
				<div class="form-group">
					<label>Tipo</label><input type="text" id="tipo" 
					name="tipo" class="form-control" style="width: 50%"
					placeholder="Digite o novo tipo do Produto"/>
				</div>
				<div class="form-group">
					<label>Marca</label><input type="text" id="marca" 
					name="marca" class="form-control" style="width: 50%"
					placeholder="Digite a nova marca do produto"/>
				</div>
				<div class="form-group">
					<label>Preco</label><input type="number" id="preco" 
					name="preco" class="form-control" style="width: 50%"
					placeholder="Digite o novo preco do produto"/>
				</div>
				<div class="form-group">
					<label>Data</label><input type="date" id="data" 
					name="data" class="form-control" style="width: 50%"
					/>
				</div>
				
				<button type="submit" class="btn btn-warning">Atualizar Produto</button>
			
			</form>
			</div>
			<div class="alert alert-warning alert-dismissible fade show" role="alert">
	  			<strong>Produto ${produto.getNome()} atualizado com sucesso!!</strong>
	  			<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
			</div>
		</main>
			
	<footer>
	<p class = "copyright">&copy; Copyright Matheus Zordan</p>
	</footer>
</body>
</html>