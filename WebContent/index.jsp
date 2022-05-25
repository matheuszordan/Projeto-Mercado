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
<title>Pagina Inicial</title>
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
		
		<ul class="acoes">
			<li>
				<h2>Cadastrar</h2>
				<img src="imagens/cadastro.png" class="imagem-cadastro" width="50%">
				<br>
				<a href="formNovoProduto.jsp">Cadastrar Produto</a>
			</li>
			<li>
				<h2>Listar</h2>
				<img src="imagens/lista.jpg" class="imagem-lista" width="50%">
				<br>
				<a href="formListarProduto.jsp">Listar Produtos</a>
			</li>
			<li>
				<h2>Deletar</h2>
				<img src="imagens/deletar.jpg" class="imagem-deletar" width="50%">
				<br>
				<a href="formDeletarProduto.jsp">Deletar Produto</a>
			</li>
			<li>
				<h2>Atualizar</h2>
				<img src="imagens/update.jpg" class="imagem-update" width="50%" >
				<br>
				<a href="formAtualizarProduto.jsp">Atualizar Produto</a>
			</li>
		</ul>
	
	
	</main>
	<footer>
	<p class = "copyright">&copy; Copyright Matheus Zordan</p>
	</footer>
</body>
</html>