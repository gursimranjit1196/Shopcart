<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style2.css" />
<title >SHOPCART</title>
<body>
<script type="text/javascript">
function funct()
{
	document.getElementById("t6").value="";
}
</script>
<div id="header">
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">S</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">H</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">O</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">P</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">C</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">A</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">R</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">t</p>

<p style="float:right;color:black;margin-top: 60px;font-size: 24px;font-stretch: ultra-expanded;margin-right: 30px;font-family: Bookman Old Style;"> THE WORLD'S BEST E-COMMERCE SITE
</p>

</div>

<div id="main_content">
    <div id="menu_tab">
      <ul class="menu">
        <li><a href="index.jsp" class="nav"> Home </a></li>
        <li class="divider"></li>
        
       
        <li><a href="login.jsp" class="nav">My account</a></li>
        <li class="divider"></li>
        
       
        <li><a href="contact.html" class="nav">Contact Us</a></li>
        <li class="divider"></li>
      </ul>
    </div>
    </div>

<script type="text/javascript">
function fun2()
{var un=document.getElementById("t10").value;
var pw=document.getElementById("t20").value;
var res;
if(un=="")

{document.getElementById("l10").innerHTML="Enter username ";
res= false;}
if(pw=="")
{document.getElementById("l20").innerHTML="Enter password ";
res= false;
}
return res;
}

function fun1()
{var n=document.getElementById("t100").value;
var  p=document.getElementById("t200").value;
var  cp=document.getElementById("t3").value;
var res;
 if(n=="")
	{document.getElementById("l1").innerHTML="Enter Username ";
	res= false;	
	}
 if(p=="")
 {document.getElementById("l2").innerHTML="Enter Password ";
 res= false; 
 }
 if(p!=cp)
 {document.getElementById("ll2").innerHTML="Passwords Dont Match..";
 res= false; 
 }

return res;
} 
</script>
<%
if(session.getAttribute("user")==null)
{
%>
                        
<div style="width:50%;height:auto;float: left;" >
<div style="text-align: center;width: 50%;height: auto;margin-top: 20%;margin-left: 15%">
<h1> LOGIN</h1>
<center>
<table>
<form action="login_db.jsp">
<tr><td>   <p style="font-size: 16px;font-style: bold;"> USERNAME </p></td><td><input  type="text"  Name="t11" id="t10"  /> &nbsp<label style="color:red"  id="l10"></label>  <br><br></td></tr>
<tr><td>     <p style="font-size: 16px;font-style: bold;">PASSWORD </p></td><td><input type="password" Name="t21" id="t20"/>&nbsp<label style="color:red"  id="l20"></label>  <br><br></td></tr>
<tr><td></td><td>                      <input type="submit" onclick="return fun2()" value="LogIn"/>    &nbsp <input type="reset" value="reset"/> </td></tr>
 <%String x=(String)session.getAttribute("user") ;
 if(x!=null)
 {%>
 <label id="l1" style="color:red;"><%= session.getAttribute("user") %></label>
 <% }%>	                         
</form>
</table>
</center> 
</div>
</div>

<div style="width: 50%;height:auto;float: left;" >
<div style="text-align: center;width: 50%;height: auto;padding:15% 25% 25% 25%;">
                       
 <form action="form_db.jsp" method=get >
<h1>SIGN UP</H1>
<center>
<table>

<tr><td><p style="font-size: 16px;font-style: bold;">Full Name </p></td><td>     <input type="text"  name="t4"/><br><br></td></tr>
<tr><td><p style="font-size: 16px;font-style: bold;">Username</p></td><td>         <input type="text" id="t100" name="t101"/>&nbsp<label style="color:red"  id="l1"></label><br><br></td></tr>
<tr><td><p style="font-size: 16px;font-style: bold;">Email Id</p></td><td>         <input type="email"  name="t6" id="t6" value="eg:someone@abc.com" onclick="funct()" /><br><br></td></tr>
<tr><td><p style="font-size: 16px;font-style: bold;">Password </p></td><td>        <input type="password" id="t200" name="t201"/>&nbsp<label style="color:red"  id="l2"></label><br><br></td></tr>
<tr><td><p style="font-size: 16px;font-style: bold;">Confirm Password</p></td><td>        <input type="password" id="t3" name="t3"/>&nbsp<label style="color:red"  id="ll2"></label></p><br><br></td></tr>
 <tr><td></td><td><input type="submit" onclick="return fun1()" value="Sign Up"/></td></tr>


</table>
</center>
</form>


</div>
</div>

<%}
 else
 {
 response.sendRedirect("hi.jsp");
 }%>
</div>
 
 
</body>
</html>