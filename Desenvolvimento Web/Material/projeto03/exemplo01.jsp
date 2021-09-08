<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Exemplo 01</title>
</head>
<body>

	<h1> Exemplo 1 - Testes com TAGs JSP </h1>
	
	Temos algumas TAGs do JSP disponíveis para
	integração com o HTML sem usarmos código 
	"scriptlet" misturado. Será mais atrativo
	usando bibliotecas de TAGs mais elaboradas
	como JSTL ou JSF
	<br /><br />
	
	<jsp:include page="exemplo01_menu.jsp" />
	<br /><br />
	
	<jsp:useBean id="hoje" class="java.util.Date"></jsp:useBean>
	

	<jsp:getProperty property="hours" name="hoje"/> : 
	<jsp:getProperty property="minutes" name="hoje"/> :
	<jsp:getProperty property="seconds" name="hoje"/>

</body>
</html>