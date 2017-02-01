<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
String x=(String)session.getAttribute("user");
String b=request.getParameter("var1");


ResultSet rs=st.executeQuery("delete from cart where id='"+b+"'");
%>
<script type="text/javascript">
alert("Removed from cart");
location="hi.jsp";
</script>
<%
}
catch(Exception e)
{
	System.out.println(e.getMessage());
}
%>
</body>
</html>