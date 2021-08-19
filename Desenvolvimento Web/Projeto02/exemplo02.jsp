<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Exemplo 02</title>
</head>
<body>

<h1>Exemplo 01 - Java Server Pages</h1>

	<%
	//a estrutura básica do Java permanece funcionando aqui
	int ini = 123;
	int fim = 234;
	int soma = 0;
	int cont = 0;
	String result = "";

	//processamento
	for (int i=ini; i<=fim ; i++) {
		if (i % 2 == 0) {
			result = result + i + " - ";
			soma = soma + i;
			cont++;

		}	
	}
	//mostra o resultado
	out.print(result + "<br>");
	out.print("Quantidade de nros pares" +cont + "<br>");
	out.print("Soma dos nros pares: " + soma + "<br>");
	%>
</body>
</html>