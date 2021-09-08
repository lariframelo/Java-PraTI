<!DOCTYPE html>
<html>
<head>
	<title>Exemplo 02</title>
</head>
<body>

	<h1>Exemplo 02 - Java Server Pages</h1>

	<%
	//a estrutura básica do Java permanece funcionando aqui
	//declaração de variáveis, tipos de dados, seleção, repetição, etc
	int ini = 123;
	int fim = 234;
	int soma = 0;
	int cont = 0;
	String result = "";

	//processamento
	for (int i=ini; i<=fim; i++) 
	{
		if (i % 2 == 0) {
			result = result + i + " - ";
			soma = soma + i;
			cont++;
		}
	}

	//mostra o resultado
	out.println(result + "<br>");
	out.println("Quantidade de nros pares: " + cont + "<br>");
	out.println("Soma dos nros pares: " + soma + "<br>");
	%>	

</body>
</html>