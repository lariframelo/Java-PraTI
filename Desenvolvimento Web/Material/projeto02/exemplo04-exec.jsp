<!DOCTYPE html>
<html>
<head>
	<title>Exemplo 04 (exec)</title>
</head>
<body>

	<h1>Exemplo 04 - Recebe o codigo e faz processamento</h1>

	<%
	String scod = request.getParameter("codigo");
	boolean deucerto = false;

	//processamento
	try {
		int icod = Integer.parseInt(scod);
		if (icod == 123) {
			deucerto = true;
		}
	}
	catch(Exception e) {
		out.print("Problemas de acesso: " + e.getMessage());
	}

	//exibição de conteúdo
	if (deucerto) {
		out.print("Seja bem vindo(a)");
		//...
	}
	else {
		String voltar = "<br><a href='exemplo04-link.jsp?bug=true'>Voltar</a>";
		out.print(voltar);
	}
	%>

</body>
</html>