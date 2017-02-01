<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
MultipartRequest m=new MultipartRequest(request,"D:\\G.S.J.S.C\\workspace\\project\\WebContent\\sellerimage\\");
String x=m.getParameter("pn");
String y=m.getParameter("cat");
String z=m.getParameter("rd1");

String a=m.getParameter("desc");
String am=m.getParameter("amt");
String b=m.getParameter("t1");
String c=m.getParameter("t2");
String d=m.getParameter("t3");
String e=m.getParameter("t4");
String f=m.getOriginalFileName("pic");
System.out.println(f);


try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
	String xy=(String)session.getAttribute("user");
	System.out.println(xy);
	int i=st.executeUpdate("insert into sellername(productname,category,model,description,price,email,phone,city,username,image,name) values('"+x+"','"+y+"','"+z+"','"+a+"','"+am+"','"+c+"','"+d+"','"+e+"','"+xy+"','"+f+"','"+b+"')");
	System.out.println(x+y+z);
	if(i>0)
		response.sendRedirect("thanks.jsp");
	else
		out.println("error");
}

catch(Exception es){
	out.println(es.getMessage());
}
%>



</body>
</html>