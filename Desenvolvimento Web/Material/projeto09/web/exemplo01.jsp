<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
	
	É menos comum usar as tags de acesso a dados com JSTL. <br />
        Normalmente usamos classes DAO ou frameworks para isso
        e não diretamente pelo JSP.<br />
        De qq maneira, nada impede de fazer TODO um projeto usando
        somente JSTL.
        <br /><br />
	
	<c:catch var="ex">
	
	    <%-- tag que faz a conexão com o BD e deixa uma variável com a referência --%>
	    <sql:setDataSource driver="com.mysql.jdbc.Driver"
	                       user="root"
	                       password=""
	                       url="jdbc:mysql://localhost/alfajava"
	                       var="con" />
	
	    <%-- tag que executa uma instrução sql e obtem o resultado --%>
	    <sql:query var="res" dataSource="${con}">
	        select * from curso
	    </sql:query>
	
	    <%-- tags para listar o resultado obtido na consulta --%>
	    <c:forEach items="${res.rows}" var="linha">
	        <strong>${linha.nome}</strong> - ${linha.valor}
	        <br /><br />
	    </c:forEach>
	    
        </c:catch>

        <c:if test="${ex != null}">
            Houve algum bug na execução da lista de produtos <br />
            ${ex}
        </c:if>
        
    </body>
</html>
