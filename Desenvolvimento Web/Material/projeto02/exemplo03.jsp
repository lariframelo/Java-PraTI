<!DOCTYPE html>
<html>
<head>
	<title>Exemplo 03</title>
</head>
<body>

	<h1>Exemplo 03 - Java Server Pages</h1>

	- Testes enviando parametro para o servidor (GET / POST)
	<br><br>

	<%
	String msg = "";

	try 
	{
		//recebe o parametro enviado pela URL
		String sida = request.getParameter("idade"); //idade=23 //vou receber aqui como "23"

		//converter a String com a idade para um nro inteiro
		int iida = Integer.parseInt(sida);

		//processamento
		if (iida >= 18) {
			msg = "Ok, tudo certo";
		}
		else {
			msg = "Não pode entrar";
		}
	}
	catch (NumberFormatException ne) {
		msg = "Bug convertendo a idade: " + ne.getMessage();
	}
	catch (Exception e) {
		msg = "Bug geral: " + e.getMessage();
	}

	//mostra no navegador
	out.println(msg);
	%>

</body>
</html>