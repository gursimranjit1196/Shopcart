qa<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
	
	int i=1;
	String x=(String)session.getAttribute("user");
	ResultSet rs=st.executeQuery("select * from msgs where frm='"+x+"'");
%>
<table >
<tr><td style="font-size: 40px;text-decoration: underline;">SNo.</td><td style="font-size: 40px;"> &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;   </td><td style="font-size: 40px;text-decoration: underline;">TO</td><td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    </td><td style="font-size: 40px;text-decoration: underline;">SUBJECT</td></tr>
<tr><td></td><td></td><td></td></tr>
<%
while(rs.next())
	{
		
		%>
		
		<tr><td style="font-size: 30px"><%=i++ %>.</td><td>     </td><td><a href="viewsent.jsp?var1=<%=rs.getString(2)%> &var2=<%=rs.getString(3)%> &var3=<%=rs.getString(5)%>&var4=<%=rs.getString(4)%>" type="hyperlink" style="font-size: 30px"><%=rs.getString(2) %></a></td><td>      </td><td style="font-size: 30px"><%=rs.getString(3) %></td></tr>
		
	
		
				
	
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