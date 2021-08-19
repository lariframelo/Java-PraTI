<<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 06 (tudojunto)</title>
</head>
<body>

	<h1>Exemplo 06 - Formulário e Processamento</h1>

	<form action="exemplo05-exec.jsp" method="post">
		Informe um número inteiro: <br>
		<input type="number" name="num1">
		<br><br>

		Informe outro número inteiro: <br>
		<input type="number" name="num2">
		<br><br>

		<button name="env">Calcular</button>
	</form>
	<%
		String bug = request.getParameter("bug");
		if (bug != null) {
			if (bug.equals("true")) {
				out.print("Informe os dados pelo formulário");
			}
		}

	%>
</body>
</html>