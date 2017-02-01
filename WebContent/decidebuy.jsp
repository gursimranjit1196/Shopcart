<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String x=request.getParameter("var1");
String y=request.getParameter("var2");
String z=request.getParameter("var3");
String a=request.getParameter("var4");
String b=request.getParameter("var5");
String c=request.getParameter("var6");
if(session.getAttribute("user")==null)
{
	response.sendRedirect("login.jsp");
}
else
{
	response.sendRedirect("buyorder.jsp?var1="+x+"&var2="+y+"&var3="+z+"&var4="+a+"&var5="+b+"&var6="+c+"");
	
}
	
	 %>

</body>
</html>