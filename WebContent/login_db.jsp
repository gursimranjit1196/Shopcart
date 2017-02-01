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
String u=request.getParameter("t11");
String p=request.getParameter("t21");


try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
	
	
	ResultSet rs=st.executeQuery("select username , pass from sign_in where username='"+u+"' and pass='"+p+"' ");
	if(rs.next())
	{
		
		session.setAttribute("user",u);
		
		
		response.sendRedirect("hi.jsp");
	}
	else
	{
	%><script type="text/javascript">
   alert("User or password incorrect");
   location="login.jsp";
   </script>
	

	

	<%
	}
}
	catch(Exception e){
	
}

%>



</body>
</html>