<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
   <link rel = "stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/style.css">
 
<head>
<meta charset="ISO-8859-1">
<title>Cadastro Produto</title>
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
		
	<main>
		<h1>Cadastrar Produto</h1>
		<div class="container">
			<form action="produtoController" method="post">
				<div class="form-group">
					<label>Nome</label><input type="text" id="nome" 
					name="nome" class="form-control" style="width: 50%"
					placeholder="Digite o nome do produto"/>
				</div>
				<div class="form-group">
					<label>Tipo</label><input type="text" id="tipo" 
					name="tipo" class="form-control" style="width: 50%"
					placeholder="Digite o tipo do Produto"/>
				</div>
				<div class="form-group">
					<label>Marca</label><input type="text" id="marca" 
					name="marca" class="form-control" style="width: 50%"
					placeholder="Digite a marca do produto"/>
				</div>
				<div class="form-group">
					<label>Preco</label><input type="number" id="preco" 
					name="preco" class="form-control" style="width: 50%"
					placeholder="Digite o preco do produto"/>
				</div>
				<div class="form-group">
					<label>Data</label><input type="date" id="data" 
					name="data" class="form-control" style="width: 50%"
					placeholder="Digite o preco do produto"/>
				</div>
				
				<button type="button" class="btn btn-success">Cadastrar</button>
			</form>
			</div>
			
	</main>
	<footer>
	
	<p class = "copyright">&copy; Copyright Matheus Zordan</p>
	</footer>
</body>
</html>