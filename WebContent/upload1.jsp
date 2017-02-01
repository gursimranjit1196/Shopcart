<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style2.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
<title>Insert title here</title>
</head>
<body>



<%

MultipartRequest m=new MultipartRequest(request,"D://G.S.J.S.C//workspace//project//WebContent//mailfile//");
String to=m.getParameter("t1");		
String subject=m.getParameter("t2");
String att1=m.getOriginalFileName("t3");
String msg=m.getParameter("t5");

System.out.println(to+subject+att1+msg);
try{

			
			
Class.forName("oracle.jdbc.driver.OracleDriver");	
System.out.println("Testing 1");

	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	System.out.println("Testing 1");
	
	Statement st=con.createStatement();
			
			System.out.println("Testing 1");
			
		    
		    
			String from=(String)session.getAttribute("user");
			System.out.println("Testing 2");
			int i=st.executeUpdate("insert into msgs values('"+from+"','"+to+"','"+subject+"','"+att1+"','"+msg+"')");
			System.out.println("Testing 3");
			if(i>0)
			{%>
				<script type="text/javascript">
				
				location="mail.jsp";
				
				
				</script>
				
			<%}
			else
			{
			
				System.out.println("Message Sending failed");
				response.sendRedirect("mail.jsp");
			}
		}

		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}

       %>

  
</body>
</html>