<%@ tag import="java.util.*, java.text.*" pageEncoding="ISO-8859-1" %>

<%
//cria um objeto que é a referência 
//de um local, no caso o do servidor
Locale loc = Locale.getDefault();

//cria um objeto para formatação 
//de uma data, formato completo
DateFormat fmt = DateFormat.getDateInstance(DateFormat.FULL, loc);

//mostra uma data (de um objeto Date) 
//no formato pré definido
out.println(fmt.format(new Date()));
%>