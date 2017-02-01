<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style2.css" />
<script type="text/javascript" src="js/boxOver.js"></script>
<title>SHOPCART</title>

<link rel="stylesheet" type="text/css" media="screen" href="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.css" />

<style type="text/css">
    a.fancybox img {
        border: none;
        box-shadow: 0 1px 7px rgba(0,0,0,0.6);
        -o-transform: scale(1,1); -ms-transform: scale(1,1); -moz-transform: scale(1,1); -webkit-transform: scale(1,1); transform: scale(1,1); -o-transition: all 0.2s ease-in-out; -ms-transition: all 0.2s ease-in-out; -moz-transition: all 0.2s ease-in-out; -webkit-transition: all 0.2s ease-in-out; transition: all 0.2s ease-in-out;
    } 
    a.fancybox:hover img {
        position: relative; z-index: 999; -o-transform: scale(1.03,1.03); -ms-transform: scale(1.03,1.03); -moz-transform: scale(1.03,1.03); -webkit-transform: scale(1.03,1.03); transform: scale(1.03,1.03);
    }
</style>

</head>
<body onload="fun22()">
   <%String x=request.getParameter("var1"); %>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script> 
<script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/fancybox/1.3.4/jquery.fancybox-1.3.4.pack.min.js"></script>
<script type="text/javascript">
    $(function($){
        var addToAll = false;
        var gallery = true;
        var titlePosition = 'inside';
        $(addToAll ? 'img' : 'img.fancybox').each(function(){
            var $this = $(this);
            var title = $this.attr('title');
            var src = $this.attr('data-big') || $this.attr('src');
            var a = $('<a href="#" class="fancybox"></a>').attr('href', src).attr('title', title);
            $this.wrap(a);
        });
        if (gallery)
            $('a.fancybox').attr('rel', 'fancyboxgallery');
        $('a.fancybox').fancybox({
            titlePosition: titlePosition
        });
    });
    $.noConflict();
</script>
<!-- window.document.location="neww.jsp?var11="+x ;
	window.document.location="oldd.jsp?var11="+x ; -->
<script type="text/javascript">
function fun22()
{
	var x=document.getElementById("x1").value.toString();

	var xmlhttp=new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200){
			document.getElementById("c1").innerHTML=xmlhttp.responseText;	
		}	
		
	};
	xmlhttp.open("GET","bin.jsp?var11="+x,true);
	xmlhttp.send();
	
	}
function funct11()
{
			
	var x=document.getElementById("x1").value.toString();
	var q=document.getElementById("dd1").value.toString();
	if(q=="NEW")
	{
		var xmlhttp=new XMLHttpRequest();
		xmlhttp.onreadystatechange=function()
		{
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				document.getElementById("c1").innerHTML=xmlhttp.responseText;	
			}	
			
		};
		xmlhttp.open("GET","range.jsp?var11="+x+"&var22="+q,true);
		xmlhttp.send();
		
		
		
	}
	else if(q=="OLD")
	{
		var xmlhttp=new XMLHttpRequest();
		xmlhttp.onreadystatechange=function()
		{
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				document.getElementById("c1").innerHTML=xmlhttp.responseText;	
			}	
			
		};
		xmlhttp.open("GET","range.jsp?var11="+x+"&var22="+q,true);
		xmlhttp.send();
			
	
	}
	else if(q=="else")
		{
		location="";
		}
	else
		{
		var xmlhttp=new XMLHttpRequest();
		xmlhttp.onreadystatechange=function()
		{
			if(xmlhttp.readyState==4 && xmlhttp.status==200){
				document.getElementById("c1").innerHTML=xmlhttp.responseText;	
			}	
			
		};
		xmlhttp.open("GET","range.jsp?var11="+x+"&var22="+q,true);
		xmlhttp.send();
			
		
		}
}	

</script>

<td><input type="hidden" value="<%=x%>" name="x1" id="x1"></td>
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
       
        <li><a href="login.jsp" class="nav">My Account</a></li>
        <li class="divider"></li>
        <li><a href="contact.html"  onclick="fun1()" class="nav">Contact Us</a></li>
        <li class="divider"></li>     
    	</ul>		
    </div>
    <!-- end of menu tab -->
   <div style="float: left;width:100%;text-align: center;">
<!--     Select... -->
<!-- <br> -->
<!-- <input type="radio" name="dd1" id="dd1" value="OLD"/>OLD<br> -->
<!-- <input type="radio" name="dd1" id="dd1" value="NEW"/>NEW<br> -->
<!-- <input type="radio" name="dd1" id="dd1" value="BTW1"/>BELOW 5000<br> -->
<!-- <input type="radio" name="dd1" id="dd1" value="BTW2"/>BETWEEN 5000-10000<br> -->
<!-- <input type="radio" name="dd1" id="dd1" value="BTW3"/>BETWEEN 10000-15000<br> -->
<!-- <input type="radio" name="dd1" id="dd1" value="BTW4"/>ABOVE 15000<br> -->
<!-- <input type="submit" value="APPLY" onclick="funct11()"/> -->

<select name="dd1" id="dd1">
  <option value="else">Select Category</option>
  <option value="NEW">NEW</option>
  <option value="OLD">OLD</option>
  <option value="BTW1">BELOW 5000</option>
  <option value="BTW2">BELOW 5000-10000</option>
  <option value="BTW3">BELOW 10000-15000</option>
  <option value="BTW4">ABOVE 15000</option>
</select>
<input type="button" value="APPLY" onclick="funct11();">
    </div>

   <div id="c1" style="float: left;width: 100%;">
	</div>

</div>
</body>
</html>