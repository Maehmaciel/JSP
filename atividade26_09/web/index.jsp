<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page info="Calculadora"%>
<%@page errorPage="erro.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=getServletInfo()%></title>
    </head>
    <body>
        <h1><%=getServletInfo()%></h1>
        
        <form action="#">
Primeiro número: <input type="text" name="num1" value=<%=
    request.getParameter("num1")!=null?request.getParameter("num1"):"0"
                        %>><p>
    Operador: <select name="operacao">
        <option value="soma">+</option>
        <option value="sub">-</option>
        <option value="mult">*</option>
        <option value="div">/</option>
    </select><p>
Segundo número: <input type="text" name="num2" value=<%=request.getParameter("num2")%>><p>
    

<input type="submit" value="GO">

</form>

<%

String n1 = request.getParameter("num1");
String n2 = request.getParameter("num2");
String op = request.getParameter("operacao");
if(n2!=null&&n1!=null){
   double num1=Double.parseDouble(n1);
   double num2=Double.parseDouble(n2);
   double res=0;
   if(op.equals("soma")){
    res = num1+num2;
    out.print(res);
}

   else if(op.equals("sub")){
    res = num1-num2;
    out.print(res);
}

   else if (op.equals("mult")){
    res = num1*num2;
    out.print(res);
}

   else if (op.equals("div")){
    res = num1/num2;
    out.print(res);
}
}

%>

    </body>
</html>
