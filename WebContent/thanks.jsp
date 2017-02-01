<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style2.css" />
<script type="text/javascript" src="js/boxOver.js"></script>

<title>SHOPCART</title>
</head>
<body>

<div id="header">

<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">S</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">H</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">O</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">P</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">C</p>
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
        
        <li><a href="logout.jsp" class="nav">Log out</a></li>
        <li class="divider"></li>
        
       <li><a href="mail.jsp" class="nav">Messages</a></li>
        <li class="divider"></li>
        
 
        <li><a href="contact.html" class="nav">Contact Us</a></li>
        <li class="divider"></li>
      </ul>
            
    </div>
    <!-- end of menu tab -->
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


<%
if(session.getAttribute("user")!=null)
{
	 %>

<br>
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
<div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a href="cart2.jsp">FAVOURITES</a></div>
          </div>
         
        </div>

</div>

	
<div   align="center" style="width: 75%;float:left; height: 500px;background:url(images/bg.jpg) repeat-x #e4e9ec top;">
<h3 align="center" style="font-size: 50px;border-width: 7px;border-style: dotted;">Your Product has been posted</h3><br><br><br>

<div style="width: 70%; height: 130px;background:url(images/bg.jpg) repeat-x #e4e9ec top;color: black; padding:50px">
<hr align="center">
<h2>Have something else to sell?<a href="seller_form.jsp" title="hyperlink">Sell another Product</a></h2><br><br>
<h1><a href="hi.jsp" title="hyperlink">Home Page</a></h1>
<hr align="center">

</div>


</div>
</div>

<%
}
else
	response.sendRedirect("login.html");


%>
</body>
</html>