<!DOCTYPE html>
<html>
<head>
	<title>Exemplo 05 (form)</title>
</head>
<body>

	<h1>Exemplo 05 - Formulario</h1>

	<form action="exemplo05-exec.jsp" method="post">
		Informe um numero inteiro: <br>
		<input type="number" name="num1">
		<br><br>

		Informe outro numero inteiro: <br>
		<input type="number" name="num2">
		<br><br>

		<button name="env">Calcular</button>
	</form>

	<%
	//aqui vai ter algo do JSP
	String bug = request.getParameter("bug");
	if (bug != null) {
		if (bug.equals("true")) {
			out.print("Informe os dados pelo formulario");
		}
	}
	%>

</body>
</html>