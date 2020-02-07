<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gerenciador de Contatos</title>
</head>
<body>
	<div align="center">
		<h1>Gerenciador de Contatos</h1>
		
		<form method="get" action="search">
			<input type="text" name="nome" />
			<input type="submit" value="Buscar" />
		</form>
		
		<h3><a href="new">Novo Contato</a></h3>
		<table border="1" cellpadding="5">
			<thead>
				<th>ID</th>
				<th>Nome</th>
				<th>Sobrenome</th>
				<th>Telefone</th>
				<th>#</th>
			</thead>
			<tbody>
				<c:forEach items="${contatos}" var="contato">
					<tr>
						<td>${contato.id}</td>
						<td>${contato.nome}</td>
						<td>${contato.sobrenome}</td>
						<td>${contato.telefone}</td>
						<td>
							<a href="edit?id=${contato.id}">Editar</a> / 
							<a href="delete?id=${contato.id}">Deletar</a>
						</td>
					</tr>
				</c:forEach>				
			</tbody>
		</table>
	</div>
</body>
</html>