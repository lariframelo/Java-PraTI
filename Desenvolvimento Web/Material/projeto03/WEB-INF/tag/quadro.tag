<%@tag description="Tag para mostrar um quadro de aviso" %>
<%@attribute name="title" required="true" %>

<style>
#aviso{
    background-color: #EFEFEF;
    width: 250px;
    padding: 5px;
    border-style: solid;
    border-width: 1px;
    border-color: #3399CC;
    text-align: justify;
    display: block;
    position: absolute;
    top: 350px;
    left: 150px;
}
</style>

<div id="aviso">
    <strong><%=title%></strong>
    <br /><br/>
    <jsp:doBody />
</div>