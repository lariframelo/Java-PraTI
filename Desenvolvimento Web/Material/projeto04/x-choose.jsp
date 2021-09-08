<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<HTML>
<HEAD>
	<TITLE>JSTL::&lt;x:choose&gt;</TITLE>
</HEAD>
<BODY>
	<c:import url="pedido.xml" var="xmltext"/>
	<x:parse xml="${xmltext}" var="out"/>
	<x:choose>
		<x:when select="$out//pedido">
			<P>1o item: <x:out select="$out//pedido/item[1]"/><BR>
			Último item: <x:out select="$out//pedido/item[last()]"/></P>
		</x:when>
		<x:otherwise>
			<P>O pedido não contém itens.</P>
		</x:otherwise>
	</x:choose>
</BODY>
</HTML>
