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

String b=request.getParameter("t4");
String c=request.getParameter("t101");
String d=request.getParameter("t6");
String e=request.getParameter("t201");
String f=request.getParameter("t3");

%>





<%
try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
	
	
	
	ResultSet rs=st.executeQuery("select * from sign_in ");
	System.out.println("1");
	
		System.out.println("3");
	while(rs.next())
	{
		if(rs.getString(2).equals(c))
		{
			System.out.println("4");
			%>
			<script>
			alert("username already exist");
			location="login.jsp";
			</script>
			<%
		}
		else
		{
			System.out.println("5");
	
	int i=st.executeUpdate("insert into sign_in values('"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
	%>
	<script>
	alert("sucessfully signed in");
	location="login.jsp";
	</script>
<%
		}
	}
	
}

catch(Exception es){
	out.println(es.getMessage());
}
%>

</body>
</html>