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

try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
	String x=request.getParameter("var1");
	String y=request.getParameter("var2");
	String z=request.getParameter("var3");
	String a=request.getParameter("var4");
	String b=request.getParameter("var5");
	String c=request.getParameter("var6");
	
	System.out.println(x+" "+y);
	int i=st.executeUpdate("insert into order1 values('"+x+"','"+y+"','"+z+"','"+a+"','"+b+"','"+c+"')");
	st.executeUpdate("delete from sellername where id='"+y+"'");
	
	%>
	<script type="text/javascript">
alert("You have suessfully buy a product");
location="hi.jsp";
</script>
	<%
	
	
}
catch(Exception e)
{
		out.println(e.getMessage());
}



%>


</body>
</html>