<%@ page import="java.io.*" %>
<%
//arquivo só com código JSP para gravação dos dados

if (request.getParameter("sub") != null) 
{
	//pegar o nome, email e texto
	String nom = request.getParameter("nom");
	String ema = request.getParameter("ema");
	String txt = request.getParameter("txt");
	
	String linha = nom + " # " + ema + " # " + txt;
	
	String dir = request.getRealPath("/");
	String arq = dir + "/projeto02/visitas/txt/dados.txt";
	FileWriter fw = new FileWriter(arq, true);
	BufferedWriter bw = new BufferedWriter(fw);
	PrintWriter pw = new PrintWriter(bw);
	pw.println(linha); //o método println já coloca "\n" no final
	pw.close();
	bw.close();
	fw.close();
}
	
//direcionar para a página de visualização
response.sendRedirect("livro_view.jsp");
%>