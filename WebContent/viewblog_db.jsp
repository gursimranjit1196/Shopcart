<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style2.css" />
<script type="text/javascript" src="js/boxOver.js"></script>

<title>SHOPCATR</title>
</head>
<body>
<%Connection con=null; %>

<div id="header">

<p style="font-size: 90px;font-familfy:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">S</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">H</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">O</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 50px ">P</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">C</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">A</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">R</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">t	</p>

<!-- 
 <p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">T</p>
 
 
 <p style="font-size: 90px;font-family:AR DESTINE;COLOR:blue;float:left;margin-left: 30px ">H</p>
 
 <p style="font-size: 90px;font-family:AR DESTINE;color:navy ;float:left;margin-left: 30px ">E</p>
 
 
 <p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 50px ">A</p>
 
 <p style="font-size: 90px;font-family:AR DESTINE;COLOR:green;float:left;margin-left: 30px ">B</p>
 
 <p style="font-size: 90px;font-family:AR DESTINE;COLOR:orange;float:left;margin-left: 30px ">C</p>  -->


<p style="float:right;color:black;margin-top: 60px;font-size: 24px;font-stretch: ultra-expanded;margin-right: 30px;font-family: Bookman Old Style;"> THE WORLD'S BEST E-COMMERCE SITE


</p>


</div>
<div id="main_content">
    <div id="menu_tab">
      <ul class="menu">
        <li><a href="index.html" class="nav"> Home </a></li>
        <li class="divider"></li>
        
        
        <li><a href="logout.jsp" class="nav">Logout</a></li>
        <li class="divider"></li>
        
       
        <li><a href="contact.html" class="nav">Contact Us</a></li>
        <li class="divider"></li>
 <li><a href="#" class="nav">Messages</a></li>
        
        
       
      </ul>
              
      
    </div>
    <!-- end of menu tab -->
    <% if(session.getAttribute("user")!=null)
{
%>
   
      <p style=" font-size: 18px;float: right;margin-right: 1%;">Hi, <a href="hi.jsp" > <%=session.getAttribute("user") %> </a></p>
 <%
 }
   else
   {
   response.sendRedirect("login.jsp");
   }%>
 
   
   <div style="float: right;margin-right: 0%;font-size: 20px;height:35px;">
  </div>
    	 <div style="height:auto;width:25%;float:left;">
<div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="seller_form.jsp">SELL</a></div>
          </div>
         
        </div>
        
        <div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="blog.jsp" type="hyperlink" >WRITE BLOG</a></div>
          </div>
         
        </div><div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="viewblog_db.jsp">VIEW BLOG</a></div>
          </div>
         
        </div><div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="viewbuyproduct.jsp">BOUGHT PRODUCTS</a></div>
          </div>
         
        </div><div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="viewsellproduct.jsp">PRODUCTS ON-SALE</a></div>
          </div>
         
        </div><div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="viewsoldproduct.jsp">SOLD PRODUCTS</a></div>
          </div>
         
        </div>
<%


try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
String x=(String)session.getAttribute("user");
%>
<div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="cart2.jsp">FAVOURITES </a></div>
		<%
		int count=0;
		ResultSet rs1=st.executeQuery("select * from cart where username='"+x+"'");


		while(rs1.next())
		{
			++count;
		}
		
		%>        
		<p style="font-size: 25px; color: white;">(<%=count %>)</p>
		<%
}
catch(Exception v)
{
	System.out.println(v.getMessage());
}
		%>   
          </div>
         
        </div></div>

    	 	
    

<br><br><br>

<%

if(session.getAttribute("user")!=null)
{
%>

<br>


<%


try{

	Statement st=con.createStatement();
	String x=(String)session.getAttribute("user");
	ResultSet rs=st.executeQuery("select * from blog where username='"+x+"'");
	


	
		
		%>
		
		<center>
		
		<table border="1" style="font-size: 25px">
				 <h1 style="font-size: 50px;text-decoration: underline;">TITLES</h1>
		
	<%
	while(rs.next())
	{	
		 %>
		<tr><td><a href="viewblog.jsp?var1=<%=rs.getString(1)%>&var2=<%=rs.getString(2)%>&var3=<%=rs.getString(4)%>" type="hyperlink"><%=rs.getString(1) %></a></td></tr>
		
	
		
			
	
	<%
	}
	%>
	
		</table>
		</center>
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

</div>
		



	
		
	
		

</body>
</html>