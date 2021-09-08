<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@include file="_conex.jsp" %>
<%@include file="_header.jsp" %>

<div id="content">
    <h1> Lista dos Crusos Disponíveis</h1>
    
    <%-- usar JSTL para exibir os cursos --%>
    <c:catch var="ex">
        <sql:query var="res" dataSource="${con}">
            select * from curso
        </sql:query>
        <c:forEach items="${res.rows}" var="linha">
            <strong>${linha.nome}</strong> - ${linha.valor}
            <br /><br />
        </c:forEach>
    </c:catch>
    <c:if test="${ex != null}">
        Houve algum bug na execução da lista de produtos <br />
    </c:if>

</div>

<%@include file="_footer.jsp" %>

