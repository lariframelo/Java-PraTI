<!DOCTYPE html>
<html>
<head>
	<title>Exemplo 04</title>
</head>
<body>

	<h1>Exemplo 04 - Testes com Link</h1>

	Ao clicar no link vai para a pagina de processamento
	<br><br>

	<a href="exemplo04-exec.jsp?codigo=123">
		Clique aqui para fazer o processamento
	</a>
	<br><br>

	<%
	//aqui vai ter algo do JSP
	String bug = request.getParameter("bug");
	if (bug != null) {
		if (bug.equals("true")) {
			out.print("Codigo invalido");
		}
	}
	%>


</body>
</html>