<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style2.css" />
<!--[if IE 6]>
<link rel="stylesheet" type="text/css" href="iecss.css" />
<![endif]-->
<script type="text/javascript" src="js/boxOver.js"></script>
<title>SHOPCART</title>
</head>
<body>

<div id="header">

<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">S</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">H</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">O</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 50px ">K</p>
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
        
        <li><a href="logout.jsp" class="nav">Logout</a></li>
        <li class="divider"></li>
        
      
        <li><a href="contact.html" class="nav">Contact Us</a></li>
        <li class="divider"></li>
        <li><a href="mail.jsp" class="nav">Messages</a></li>
        <li class="divider"></li>
        
        
       
      </ul>
            
    </div>
    <!-- end of menu tab -->
<!-- end of center content -->
</div>

<div style="margin-left: 25%">
  <font size="5">
  <table>
<!-- <font size="9"> -->
 
 <tr><td>TO:</td><td>        <input type="text"  readonly="readonly"  name="t1" id="t1" value=<%= request.getParameter("var1") %>><br><br></td></tr>
 
 <tr><td>Subject:    </td><td> <input type="text" readonly="readonly"  name="t2" id="t2" value=<%= request.getParameter("var2") %>></td></tr><br><br>
  
 <tr><td></td><td><img src="mailfile/<%=request.getParameter("var4") %>" height="180px" width="180px"  /><br><br></td></tr>
   
              
                
   
    <tr><td>Message:</td><td><br>            <textarea rows="30" cols="90" name="t5" id="t5"><%= request.getParameter("var3") %></textarea></td></tr>
   
            
</table>
<!-- </font> -->    
    </font>
   
   
</div>


      
        

    
    <!-- end of center content -->
    
  <!-- end of main content -->
  </div>
<!-- end of main_container -->
<!--  
 <div class="footer">
    <div class="left_footer"> <img  /> </div>
    <div class="center_footer"> Template name. All Rights Reserved 2008<br />
      <a href="http://csscreme.com"><img src="images/csscreme.jpg" alt="csscreme" title="csscreme" border="0" /></a><br />
      <img src="images/payment.gif" alt="" /> </div>
    <div class="right_footer"> <a href="http://all-free-download.com/free-website-templates/">home</a> <a href="http://all-free-download.com/free-website-templates/">about</a> <a href="http://all-free-download.com/free-website-templates/">sitemap</a> <a href="http://all-free-download.com/free-website-templates/">rss</a> <a href="http://all-free-download.com/free-website-templates/">contact us</a> </div>
  </div> -->

</body>
</html>