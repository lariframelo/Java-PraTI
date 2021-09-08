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
		<h1> Formulário para Gravar Recado </h1>
		
		<form action="livro_exec.jsp" method="get">
			Informe seu Nome: <br />
			<input type="text" name="nom" />
			<br /><br />
			
			Informe seu E-mail: <br />
			<input type="text" name="ema" />
			<br /><br />
			
			Deixe seu Recado: <br />
			<textarea name="txt" rows="5" cols="30"></textarea>
			<br /><br />
			
			<input type="submit" name="sub" value="Cadastrar" />
		</form>
		
	</div>
	
	<div id="footer">
		by Alfamídia
	</div>

</div>
</body>
</html>

