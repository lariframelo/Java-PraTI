<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 04 (exec)</title>
</head>
<body>

	<h1>Exemplo 04 - Recebe o codigo e faz processamento </h1>

	<%
	String scod = request.getParameter("codigo")
	boolean deucerto = false;

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
 	} else {
 		String voltar = "<a href='exemplo04-link.jsp'>Voltar</a>";
 		out.print(voltar);
 	}
	%>
</body>
</html>