<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<HTML>
<HEAD>
	<TITLE>JSTL::&lt;x:parse(1)&gt;</TITLE>
</HEAD>
<x:parse var="xmldoc">
	<clientes>
		<cliente id="1">
			<nome>Peter</nome>
			<sobrenome>Parker</sobrenome>
			<email>parker@clarim.com</email>
		</cliente>
		<cliente id="2">
			<nome>Antony</nome>
			<sobrenome>Stark</sobrenome>
			<email>stark@stark.com</email>
		</cliente>
		<cliente id="3">
			<nome>Bruce</nome>
			<sobrenome>Banner</sobrenome>
			<email>banner@hotmail.com</email>
		</cliente>
		<cliente id="4">
			<nome>James</nome>
			<sobrenome>Howlett</sobrenome>
			<email>logan@xsgs.com</email>
		</cliente>
		<cliente id="5">
			<nome>Bruce</nome>
			<sobrenome>Wayne</sobrenome>
			<email>wayne@wayne.com</email>
		</cliente>
	</clientes>
</x:parse>
<BODY>
	<c:if test="${not empty param.id}">
		<c:set var="id" value="${param.id}" scope="page"/>
		<x:set var="user" select="$xmldoc//clientes/cliente[@id=$pageScope:id]"/>
		<H4>Olá Sr. <x:out select="$user//sobrenome"/>!</H4>
	</c:if>
	<c:if test="${empty param.id}">
		<H4>Parâmetro id não fornecido.</H4>
	</c:if>
</BODY>
</HTML>
