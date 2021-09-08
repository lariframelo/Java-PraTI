<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Insert title here</title>
</head>
<body>

	<h1> Exemplo 3 - JSTL </h1>
	
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
	                       url="jdbc:mysql://localhost/alfalive"
	                       var="con" />
	
	    <%-- tag que executa uma instrução sql e obtem o resultado --%>
	    <sql:query var="res" dataSource="${con}">
	        select * from curso
	    </sql:query>
	
	    <%-- tags para listar o resultado obtido na consulta --%>
	    <c:forEach items="${res.rows}" var="linha">
	        <strong>${linha.nome}</strong> <br />
	        ${linha.descricao}
	        <br /><br />
	    </c:forEach>
	    
    </c:catch>

    <c:if test="${ex != null}">
        Houve algum bug na execução da lista de produtos <br />
        ${ex}
    </c:if>

</body>
</html>