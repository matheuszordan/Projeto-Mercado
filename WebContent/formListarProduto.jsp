<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<section class = "mostrar">
			<form action="ListarController"  method=get ></form>
				<button type="button" class="btn btn-success">Listar</button>
		</section>
		<h1> Produtos Cadastrados</h1>
	<table class="table table-dark table-striped">
		  <thead>
			<tr>
			    <th>Nome</th>
			    <th>Tipo</th>
			    <th>Marca</th>
			    <th>Valor</th>
			    <th>Data</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${produto}" var="produto">
        <tr>
            <td><c:out value= "${produto.getNome()}"/></td>
            <td><c:out value="${produto.getTipo()}"/></td>
            <td><c:out value="${produto.getMarca()}"/></td>
            <td><c:out value="${produto.getValor()}"/></td>
            <td><c:out value="${produto.getDataCadastro() }"/></td>
        </tr>
		</c:forEach>
		</tbody>
	</table>
	
	<c:forEach items="${produto}" var="produto">
        
            ${produto.getNome()}
            ${produto.getTipo()}
            ${produto.getMarca()}
            ${produto.getValor()}
            ${produto.getDataCadastro()}
    
		</c:forEach>
		<a href="formAtualizarProduto.jsp" >Editar</a>
    	<a href="formDeletarProduto.jsp" >Deletar</a>
	<footer>
	<p class = "copyright">&copy; Copyright Matheus Zordan</p>
	</footer>
</body>
</html>