
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Exemplo 01 - JDBC </h1>
	
	Para usar a API JDBC (Java DataBase Connectivity)
	com JSP temos os mesmos "quatro" passos utilizados
	no Java: 
	<br /><br />
	
	1) Identificar a fonte e efetuar a conexão <br />
	2) Criar o SQL e o objeto que representa esse comando <br />
	3) Obter o resultado da execução do SQL e manipular <br />
	4) Fechar conexão
	<br /><br />
	
	<%@page import="java.sql.*"%>
	<%
	//identificar qual é o SGBD
	Class.forName("com.mysql.jdbc.Driver");
	
	//conectar efetivamente com o SGBD
	String host = "jdbc:mysql://localhost/alfajava";
	String user = "root";
	String pass = "";
	Connection conn;
	conn = DriverManager.getConnection(host, user, pass);
	
	//depois, criar um objeto para manipulação dos SQLs
	Statement stmt = conn.createStatement();

	//então, criar o comando e executar
	String sql = "select * from curso";
	ResultSet rset = stmt.executeQuery(sql);
	
	//aí sim, só manipulação do resultado
	while (rset.next()) {
            out.print( rset.getString("nome")+ " - " );
            out.print( "R$ " + rset.getFloat("valor")+"<br />" );
	}
	
	//fechar os objetos de manipulação do SGBD
	rset.close();
	stmt.close();
	conn.close();
	%>
        
    </body>
</html>
