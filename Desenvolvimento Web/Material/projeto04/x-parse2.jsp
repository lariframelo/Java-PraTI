<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>

<HTML>
<HEAD>
	 <TITLE>JSTL::&lt;x:parse(2)&gt;</TITLE>
</HEAD>
<BODY>
	<H4>Portfolio Parcial</H4>
	<c:import url="portfolio.xml" var="xmltext"/>
	<x:parse xml="${xmltext}" var="out"/>
	<x:set var="base" select="$out//portfolio"/>
	<UL>
		<LI><B>1o Livro Java:</B>
		<x:out select="$base/livro[contains(titulo,'Java')]/titulo"/></LI>
		<LI><B>Ano 2a publicação:</B>
		<x:out select="$base/livro[2]/ano"/></LI>
		<LI><B>Editora:</B>
		<x:out select="$base/livro[starts-with(@isbn,'857522')]/editora"/></LI>
		<LI><B>Último título:</B>
		<x:set var="pub" select="$base/livro[last()]/titulo"/>
		<x:out select="$pub"/></LI>
	</UL>
</BODY>
</HTML>
