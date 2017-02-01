
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
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
<div id="header">

<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">S</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">H</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">O</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">P</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">K</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">A</p>

<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">R</p>

<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">t</p>


<!-- 
 <p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">S</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">H</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">O</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">P</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">K</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">A</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">A</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">A</p><p style="font-size:90px;font-family:AR DESTINE;COLOR:red;float:left;margin:left:30px">R</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">A</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">A</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">R</p><p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">t</p>
 
 
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
        <li><a href="index.jsp" class="nav"> Home </a></li>
        <li class="divider"></li>
      
        <%String q=(String)session.getAttribute("user");
        if(q==null)
        {%>
        <li><a href="login.jsp" class="nav">My Account</a></li>
        <li class="divider"></li>
        <%}
        %>
        
         <%String qq=(String)session.getAttribute("user");
        if(qq!=null)
        {%>
        <li><a href="logout.jsp" class="nav">Log out</a></li>
        <li class="divider"></li>
        <%}
        %>
        <%String qqq=(String)session.getAttribute("user");
        if(qqq!=null)
        {%>
        <%
      if(session.getAttribute("user")!=null)
{
%>
   
  
    <div id="menu_tab">
      <ul class="menu">
      	<li><a href="cart2.jsp" class="nav">Favourites</a></li>
        <li class="divider"></li>
        </ul>
       <%
 }

      else
        {
        response.sendRedirect("login.jsp");
        }%>
        
        
        <li><a href="mail.jsp" class="nav">Messages</a></li>
        <li class="divider"></li>
        <%}
        %>
      
        <li><a href="contact.html" class="nav">Contact Us</a></li>
        <li class="divider"></li>
      

        
        
               
       
      </ul>		
    </div>
    <!-- end of menu tab -->
 
   
        <div id= "d1" style="height:100%;width:70%;float:left;margin-left: 2%;margin-top: 2%">

</div>
</div>
   
   
    	 <%
    	   if(session.getAttribute("user")!=null)
{
%>
   
      <p style=" font-size: 18px;float: right;margin-right: 1%;">Hi, <a href="hi.jsp" > <%=session.getAttribute("user") %> </a></p>
 <%
 }
   else
   {
   response.sendRedirect("login.jsp");
   }%>
   
<div style="height:100%;width:100%;float: left;">
    	 <div style="height:auto;width:25%;float:left;">
<div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a  onclick="fun2()">SELL</a></div>
          </div>
         
        </div>
        
        <div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a onclick="fun3()" type="hyperlink" >WRITE BLOG</a></div>
          </div>
         
        </div><div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a onclick="fun4()">VIEW BLOG</a></div>
          </div>
         
        </div><div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="viewbuyproduct.jsp">BUY LIST</a></div>
          </div>
         
        </div><div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="viewsellproduct.jsp">SELL LIST</a></div>
          </div>
         
        </div><div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="viewsoldproduct.jsp">SOLD PRODUCTS</a></div>
          </div>
         
        </div>


</div>

<br><br><br>


<br>
  
<br><br><br>
<%

if(session.getAttribute("user")!=null)
{
%>
<%


try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
String x=(String)session.getAttribute("user");
	ResultSet rs=st.executeQuery("select * from sellername where username!='"+x+"'");
	
	while(rs.next())
	{

		//String pname=rs.getString(1);
		//String pprice=rs.getString(5);
		%>
		<div class="prod_alnmt"> 

	     
	    
	      <div class="prod_box" >
	      <div class="center_prods_box" >
	        <div class="product_title" ><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><%=rs.getString(1) %></a>       </div>
	        <div class="product_img"><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><img src="sellerimage/<%=rs.getString(10) %>" height="100%" width="100%" border="0" /></a></div>
	        <div class="prod_price" style="text-align:center;font-size: 25px;"> Price:<span class="price"><%=rs.getString(5) %></span></div>
	        <div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidebuy.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=rs.getInt(11) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>&var6=<%=rs.getString(9) %>" type="hyperlink">Buy Now</a></div>
	        </div>
	      </div>
	      
	      
	        
	  </div>

		<%
		 
	}
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