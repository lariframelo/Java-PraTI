<!DOCTYPE html>
<html>
<head>
	<title>Livro de Visitas</title>
	<link  href="../css/default.css" type="text/css" rel="stylesheet" />
</head>

<body>
<div id="geral">

	<div id="header">
	</div>
	
	<div id="menu">
		<a href="livro_view.jsp" title="Ver Recados">Ver Recados</a>
		<a href="livro_form.jsp" title="Gravar Recado">Gravar Recado</a>
	</div>
	
	<div id="content">
		<h1> Lista dos Recados Gravados </h1>
		
		<%@ page import="java.io.*" %>
		<%
		try {
			//referencia arquivo de dados
			String dir = request.getRealPath("/");
			String arq = dir + "/projeto02/visitas/txt/dados.txt";
			
			//abre fluxo de leitura de texto
			FileReader fr = new FileReader(arq);
			BufferedReader br = new BufferedReader(fr);
			
			//faz a leitura por linha
			String linha = "";
			while ((linha=br.readLine()) != null) 
			{
				String[] vet = linha.split(" # ");
				out.print(vet[2] + "<br />");
				out.print(vet[0] + " | " + vet[1]);
				out.print("<br /><br />");
			}
		}
		catch(Exception e) {
			out.print("Nenhum recado registrado");
		}
		%>
		
	</div>
	
	<div id="footer">
		by Alfamídia
	</div>

</div>
</body>
</html>

