<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Novo Contato</title>
</head>
<body>
	<div align="center">
		<h1>
			<c:if test="${contato.id == null}">
				Novo Contato
			</c:if>
			<c:if test="${contato.id != null}">
				Alterar Contato
			</c:if>
		</h1>

		<form:form method="post" action="save" modelAttribute="contato">
			<table border="0" cellpadding="5">
				<c:if test="${contato.id != null}">
					<tr>
						<td>ID:</td>
						<td>${contato.id}</td>
						<form:hidden path="id"/>
					</tr>
				</c:if>
				<tr>
					<td>Nome</td>
					<td><form:input path="nome" /></td>
				</tr>
				<tr>
					<td>Sobrenome</td>
					<td><form:input path="sobrenome" /></td>
				</tr>
				<tr>
					<td>Telefone</td>
					<td><form:input path="telefone" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Salvar" /></td>
					<td colspan="2"><a href="/Agenda/">Cancelar</a></td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>