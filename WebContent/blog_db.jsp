<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="com.oreilly.servlet.MultipartRequest"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<!-- System.out.println("sim sim");

System.out.println("values = "+title+" "+content+" "+f);
-->
<%


MultipartRequest m=new MultipartRequest(request,"D:\\G.S.J.S.C\\workspace\\project\\WebContent\\blogimage\\");
String title=m.getParameter("t1");		
String content=m.getParameter("t2");
String f=m.getOriginalFileName("asd");
try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
	
	
	
    String x=(String)session.getAttribute("user");
	
	int i=st.executeUpdate("insert into blog(title,content,username,image) values('"+title+"','"+content+"','"+x+"','"+f+"')");
	if(i>0)
	{
		%>
		<script type="text/javascript">
   alert("Your Blog is Sucessfully Uploaded");
   location="hi.jsp";
   </script>
		<%
	}
}

catch(Exception e)
{
	out.println(e.getMessage());
}


%>





</body>
</html>