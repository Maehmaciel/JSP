<%@page import="java.util.ArrayList"%>
<%@page import="pacote.Pessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="erro.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Filtro</h1>
        <%!
            ArrayList<Pessoa> pessoas=new ArrayList();
            public void jspInit(){
                
                Pessoa p1=new Pessoa("Maria","99999999",18);
                Pessoa p2=new Pessoa("Joao","888888888",17);
                Pessoa p3=new Pessoa("Ana","77777777",18);
                Pessoa p4=new Pessoa("Pedro","666666666",17);
                pessoas.add(p1);
                pessoas.add(p2);
                pessoas.add(p3);
                pessoas.add(p4);
            }
        %>
        
        
        
        
        
        <form action="#">
Nome: <input type="text" name="nome" value=<%=
    request.getParameter("nome")!=null?request.getParameter("nome"):" "
                        %>><p>
<input type="submit" value="GO">

</form>

<%
String tem="";
String pessoa = request.getParameter("nome");
for(Pessoa p: pessoas){

    if(p.getNome().equalsIgnoreCase(pessoa)){
        out.print(p.toString());
        break;
    }
    else{
        tem="Esta pessoa nao foi encontrada";
    }
}


%>
    </body>
</html>
