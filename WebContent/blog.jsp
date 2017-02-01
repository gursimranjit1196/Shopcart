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
      
        
        <li><a href="logout.jsp" class="nav">Logout</a></li>
        <li class="divider"></li>
 
 <li><a href="mail.jsp"  onclick="fun1()" class="nav">Messages</a></li>
        <li class="divider"></li>
        

        <li><a href="contact.html" class="nav">Contact Us</a></li>
        <li class="divider"></li>
        
        
       
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
    


<%

if(session.getAttribute("user")!=null)
{
%>
<br>


<script type="text/javascript">

function fun1()
{
	document.getElementById("t1").value="";
	
	}

function fun2()
{
	document.getElementById("t2").value="";
	
	}


function fun3()
{
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readystate==4 && xmlhttp.status==200)
			document.getElementById("d11").innerHTML=xmlhttp.responseText;
		
	}
	
	xmlhttp.open("GET","image.jsp",false);
	xmlhttp.send();
	
	}


</script>
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
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
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
<form action="blog_db.jsp" enctype="multipart/form-data" method="post">
<div style="width:100%; height:800px;">


		<div style="height:100px; width:33%; background-color: ; float: left  ;" >

		<input type="file" id="asd" name="asd"   style="margin-top:80px; margin-left:20px">
		
	
	</div>



<div style="height:150px; width:63%; background-color: ; float: left;  margin-left:1%; ">

<input placeholder="Enter the content..." style="  font-size: 70px; margin-top:25px;margin-left:15px" name="t1"  id="t1" name="t1" size="17px "   type="text">

</div>
 


<div style="height:445px; width:63.5%; background-color: ; float: left; margin-left:2%; margin-top:1%">

<textarea placeholder="Enter the content..." rows="17" cols="64"  id="t2" name="t2"  style="  font-size: 20px; margin-top:6px;margin-left:0px"  > 

</textarea>

</div>
<br><br>

<div style="width:100%; height:50px;float:right; text-align: right;margin-top:20px;margin-right: 30px">
<input type="submit" value="Submit">

</div>

</div>
</form>




<%}
else 
{
	response.sendRedirect("login.jsp");
}


%>

</div>
		



</body>
</html>