<%@tag import="java.util.*, java.text.*" %>
<%@attribute name="lang" required="false" %>

<%
Locale loc = Locale.getDefault();
if (lang != null) {
    loc = new Locale(lang);
}
DateFormat fmt = DateFormat.getDateInstance(DateFormat.FULL, loc);

out.println(fmt.format(new Date()));
%>