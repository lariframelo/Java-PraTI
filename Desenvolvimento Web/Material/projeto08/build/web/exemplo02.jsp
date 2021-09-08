<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastrar um Curso</h1>
        
        Testes de cadastro (INSERT) usando SQL "preparado"
	<br /><br />
	
	<form action="exemplo02.jsp" method="post">
		Nome do Curso: <br />
		<input type="text" name="nom" />
		<br /><br />
		
		Descrição do Curso: <br />
                <textarea name="des"></textarea>
		<br /><br />
		
		Valor do Curso: <br />
		<input type="text" name="val" />
		<br /><br />
		
		<input type="submit" name="sub" value="Cadastrar" />
	</form>
	<br /><hr /><br />
	
	
	<%@page import="java.sql.*"%>
	<%
	if (request.getParameter("sub") != null) 
	{
            Class.forName("com.mysql.jdbc.Driver");
            String host = "jdbc:mysql://localhost/alfajava";
            String user = "root";
            String pass = "";
            Connection conn = DriverManager.getConnection(host, user, pass);

            //então, criar o comando e executar
            String nom = request.getParameter("nom");
            String des = request.getParameter("des");
            String val = request.getParameter("val");
            String sql = "insert into curso (nome, descricao, valor) "
                        + " values "
                        + "(?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, nom);
            stmt.setString(2, des);
            stmt.setFloat(3, Float.parseFloat(val));
            int res = stmt.executeUpdate();
            if (res > 0) {
                out.print("Cadastrado com sucesso");
            } else {
                out.print("Bug ao cadastrar");
            }
		
            //fechar os objetos de manipulação do SGBD
            stmt.close();
            conn.close();
	}
	%>
        
    </body>
</html>
