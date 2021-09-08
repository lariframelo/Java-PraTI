<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Insert title here</title>
</head>
<body>

	<h1> Exemplo 1 - JSTL </h1>
	
	<%-- Expression Language --%>
	Valor do parâmetro (get ou post): ${param.nome}
	<br /><br />
	
	<%-- declaração da TagLib, geralmente lá no início da página --%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	<%-- tag de saída para o navegador --%>
	<c:out value="Texto da TAG JSTL" />
	<br /><br />
	
	<%-- tag para criar uma variável e definir um valor --%>
	<c:set var="idade" value="12" />
	
	<%-- Seleção, usando Expression Language (EL) --%>
	<c:if test="${idade > 10}">
		Categoria Básica <strong>Iniciante</strong>
	</c:if>
	<br /><br />
	
	<%-- Escolha com múltiplas opções 
		 (um switch/case misturado com if/else) --%>
	<c:choose>
		<c:when test="${idade>5 && idade<=10}">
			Categoria Infantil
		</c:when>
		<c:when test="${idade>10 && idade<=20}">
			Categoria Juvenil
		</c:when>
		<c:when test="${idade>20 && idade<=40}">
			Categoria Adulto
		</c:when>
		<c:otherwise>
			Categoria Geral
		</c:otherwise>
	</c:choose>
	<br /><br />
	
	
</body>
</html>