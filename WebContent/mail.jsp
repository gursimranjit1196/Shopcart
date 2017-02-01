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
<script type="text/javascript">
function fun1()
{
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			document.getElementById("d1").innerHTML=xmlhttp.responseText;	
		}	
		else{
			document.getElementById("d1").innerHTML="<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center><img src=a.png></center>";
		}
	}		;
	xmlhttp.open("GET","inbox.jsp",true);
	xmlhttp.send();
	
	}
	
function fun2()
{
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
		
			document.getElementById("d1").innerHTML=xmlhttp.responseText;	
		}	
		else{
			document.getElementById("d1").innerHTML="<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center><img src=images/a.png></center>";
		}
	};
	xmlhttp.open("GET","sent.jsp",true);
	xmlhttp.send();
	
	}

function fun3()
{
	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			document.getElementById("d1").innerHTML=xmlhttp.responseText;	
		}	
		else{
			document.getElementById("d1").innerHTML="<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><center><img src=a.png></center>";
		}
	}		;
	xmlhttp.open("GET","compose.jsp",true);
	xmlhttp.send();
	
	}




</script>
</head>
<body onload="fun1()">

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
   
    


<!-- end of center content -->
    
     <% 
     
     if (session.getAttribute("user")!=null)
     {	 
    	 
    	 %>
    	 
    	 </div>




<div style="margin-left:5%;margin-top:5%;float:left; width:25%;height:100px;">
<!--         <div class="center_cat_box" style="height:100px;margin-top:27px;"> -->
<!--           <div class="msg_title" style="color:black;font-size:25px;"><a onclick="fun3()">Compose Message</a></div> -->
<!--           </div> -->
<!--         </div> -->
        
<!--         <br> -->
        
<!--         <div style="background-color:#19a3d1;margin-left:5%;position:absolute; margin-top:17%;width:25%; -->
<!-- height:100px;"> -->
<!--         <div class="center_cat_box" style="height:250px; margin-top:27px;" > -->
<!--           <div class="msg_title" style="color:purple;text-decoration:underline;font-size:25px;"><a onclick="fun1()">Inbox</a></div> -->
<!--           </div> -->
<!--         </div> -->
       
       
<!--         <div style="background-color:#19a3d1;;margin-left:5%;position:absolute; margin-top:30%;width:25%; -->
<!-- height:100px;"> -->
<!--         <div class="center_cat_box" style="height:250px; margin-top:27px;"> -->
<!--           <div class="msg_title" style="font-size:25px;color:purple;text-decoration:underline;	"><a onclick="fun2()">Sent messages</a></div> -->
<!--           </div> -->
<!--         </div> -->
        
        
        
        <div class="hi_box1"><a onclick="fun3()"></a>
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" ><a onclick="fun3()"></a>
          <div class="hi_title1" style="color:black;"><a onclick="fun3()">Compose Message</a></div>
          </div>
         </div>
        
        <div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a onclick="fun1()">Inbox</a></div>
          </div>
         </div>
         
          <div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
          <div class="hi_title1" style="color:black;"><a onclick="fun2()">Sent messages</a></div>
          </div>
         </div> 
 <div id="d1" style="position:absolute; width:60%;margin-left:35%;">
        </div>
        


    <!-- end of center content -->
    
  <!-- end of main content -->
  </div>

        
        <%
        
        }
        else
        {
        response.sendRedirect("login.jsp");
        }%>
        
        

    
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