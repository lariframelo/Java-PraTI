<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<HTML>
<HEAD>
	 <TITLE>JSTL::&lt;x:forEach&gt;</TITLE>
</HEAD>
<BODY>
	<H4>Livros Publicados</H4>
	<c:import url="portfolio.xml" var="xmltext"/>
	<x:parse xml="${xmltext}" var="out"/>
	<UL>
	<x:forEach select="$out/portfolio/livro">
		<x:choose>
			<x:when select="editora='Novatec'">
				<LI><x:out select="titulo"/>, <x:out select="ano"/>,
					<B>Novatec</B>
				</LI>
			</x:when>
			<x:otherwise>
				<LI><x:out select="titulo"/>, <x:out select="ano"/></LI>
			</x:otherwise>
		</x:choose>
	</x:forEach>
	</UL>
</BODY>
</HTML>
