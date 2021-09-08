<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cadastrar um Curso</h1>
        	
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
        
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        
        <c:if test="${param.sub != null}">
            
            <c:catch var="ex">
                <%-- tag que faz a conexão com o BD e deixa uma variável com a referência --%>
                <sql:setDataSource driver="com.mysql.jdbc.Driver"
                                   user="root"
                                   password=""
                                   url="jdbc:mysql://localhost/alfajava"
                                   var="con" />

                <%-- tag que executa uma instrução sql e obtem o resultado --%>
                <sql:update var="res" dataSource="${con}">
                    insert into curso (nome, descricao, valor) 
                    values ('${param.nom}', '${param.des}', ${param.val})
                </sql:update>

                <c:if test="${res > 0}">
                    Curso cadastrado!
                </c:if>
            </c:catch>
            <c:if test="${ex != null}">
                Houve algum bug na execução da lista de produtos <br />
                ${ex}
            </c:if>
                
        </c:if>
        
    </body>
</html>
