<%@page import="java.sql.*"%>
<%
//arquivo com os detalhes de conexao ao SGBD

Class.forName("com.mysql.jdbc.Driver");
String host = "jdbc:mysql://localhost/javaweb";
String user = "root";
String pass = "";
Connection conn;
conn = DriverManager.getConnection(host, user, pass);
%>