
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
<title>SHOPCART</title>
<script type="text/javascript">
function fun11()
{
	
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			document.getElementById("d11").innerHTML=xmlhttp.responseText;	
		}	
		
	};
	xmlhttp.open("GET","new.jsp",true);
	xmlhttp.send();
	
	}
function fun111()
{
	
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			document.getElementById("d11").innerHTML=xmlhttp.responseText;	
		}	
		
	};
	xmlhttp.open("GET","hi_other.jsp",true);
	xmlhttp.send();
	
	}


function fun12()
{
	
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			document.getElementById("d11").innerHTML=xmlhttp.responseText;	
		}	
		
	};
	xmlhttp.open("GET","old.jsp",true);
	xmlhttp.send();
	
	}


</script>

</head>
<body onload="fun111()">
<%Connection con=null; %>
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
         
        </div>

</div>

<br><br><br>
<!-- <div align="center" style="height:50px;width: 70%;float: left;margin-left: 2%"> -->
<!--  <a onclick="fun11()">NEW</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!--  <a onclick="fun12()">OLD</a> -->
 <div align="center" style="height:50px;width:13%;float: left;margin-left: 15%;border-radius:10px 0px 0px 10px;background-color:#4775ff;"  >

 <a onclick="fun11()"><p style="color:white;font-weight: bold;font-size: 30px;margin-top:8px;">NEW</p></a>&nbsp;&nbsp;&nbsp;&nbsp;
 </div>
 
 <div align="center" style="height:40px;width:13%;float: left;margin-left: 0%;border-radius:0px 0px 0px 0px;border:5px #4775ff solid"   >
 
 <a onclick="fun111()"><p style="color:#4775ff;font-weight: bold;font-size: 30px;margin-top:3px;">ALL</p></a>
 </div>
  <div align="center" style="height:50px;width:13%;float: left;margin-left: 0%;border-radius:0px 10px 10px 0px;background-color:#4775ff;" class="new_box1" >
 
 <a onclick="fun12()"><p style="color:white;font-weight: bold;font-size: 30px;margin-top:8px;">OLD</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 

 </div>
 
 <div id="d11" style=" width: 70%;float: left;margin-left: 2%;">
 
 


</div>
		
<!-- </div> -->
</div>

</body>
</html>