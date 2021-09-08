<!DOCTYPE html>
<html>
<head>
	<title> Exemplo 4 - JDBC </title>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
</head>

<body>

	<h1> Exemplo 4 - JDBC </h1>
	
	Testes de exclusão do banco (usando conexão com "indlude")
	<br /><br />
	
	<%@ page import="java.sql.*"%>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	String host = "jdbc:mysql://localhost/alfalive";
	String user = "root";
	String pass = "";
	Connection conn;
	conn = DriverManager.getConnection(host, user, pass);

	Statement stmtsel = conn.createStatement();
	String sqlsel = "select * from curso";
	ResultSet rset = stmtsel.executeQuery(sqlsel);
	
	while (rset.next()) {
		String id = rset.getString("codigo");
		out.print("<a href='?act=del&cod="+id+"'>[ X ]</a> :: ");
		out.print( rset.getString("nome")+ " - " );
		out.println( rset.getString("valor")+"<br />" );
	}
	%>
	
	
</body>
</html>

