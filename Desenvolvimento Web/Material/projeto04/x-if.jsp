<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<HTML>
<HEAD>
	<TITLE>JSTL::&lt;x:if&gt;</TITLE>
</HEAD>
<BODY>
	<c:if test="${not empty param.isbn}">
		<c:import url="portfolio.xml" var="xmltext"/>
		<x:parse xml="${xmltext}" var="out"/>
		<c:set var="isbn" value="${param.isbn}" scope="page"/>
		<x:set var="res" select="$out//portfolio/livro[@isbn=$pageScope:isbn]"/>
		<H4><x:out select="$res//titulo"/>!</H4>
		<P>
		<x:if select="contains($res//titulo,'Java')">
			- Aborda Java.<BR>
		</x:if>
		<x:if select="$res//editora='Novatec'">
			- Título da Novatec.<BR>
		</x:if>
		</P>
	</c:if>
	<c:if test="${empty param.isbn}">
		<P>Parâmetro isbn não fornecido.</P>
	</c:if>
</BODY>
</HTML>
