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

if(session.getAttribute("user")!=null)
{
%>
<%


try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
	
	int i=1;
	String x=(String)session.getAttribute("user");
	ResultSet rs=st.executeQuery("select * from msgs where t00='"+x+"'");
		%>	
<table border=0>
<tr><td style="font-size: 40px;text-decoration: underline;color: black">SNo.</td><td style="font-size: 40px;color: black;"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   </td><td style="font-size: 40px;color: black;text-decoration: underline;">FROM</td><td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    </td><td style="font-size: 40px;text-decoration: underline;color: black">SUBJECT</td></tr>
<tr><td></td><td></td><td></td></tr>
<%
	while(rs.next())
	{
		
		%>
		<tr><td style="font-size: 30px;color:black"><%=i++ %>.</td><td>     </td><td><a href="view.jsp?var1=<%=rs.getString(1)%> &var2=<%=rs.getString(3)%> &var3=<%=rs.getString(5)%>&var4=<%=rs.getString(4)%>" type="hyperlink" style="font-size: 30px"><%=rs.getString(1) %></a></td><td>      </td><td style="font-size: 30px;color:black"><%=rs.getString(3) %></td></tr>
<%
	}
%>
</table>
</font>
<%
}

catch(Exception e)
{
	out.println(e.getMessage());
}
%>

<%}
else 
{
	response.sendRedirect("login.jsp");
}


%>