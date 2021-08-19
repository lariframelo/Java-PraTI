<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 04</title>
</head>
<body>

	<h1>Exemplo 04 - Testes com Link</h1>

	Ao clicar no link você vai para a págima de processamento <br><br>
	<a href="exemplo04-exec.jsp?codigo=123">
		Clique aqui para fazer o processamento
	</a>
	<br><br>

	<%
	//aqui vai ter algo do JSP
	String bug = request.getParameter("bug");
	if (bug != null) {
		if(bug.equals('true')) {
			out.print(bug)	
		}
		
	}
	%>
</body>
</html>