<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style2.css" />
<script type="text/javascript" src="js/boxOver.js"></script>

<title>SHOPCART</title>
<script type="text/javascript">
function fun11()
{
	if ( (document.forms[0].rd1[0].checked == true ) || (document.forms[0].rd1[1].checked == true ) )
	    {
	        	var xmlhttp=new XMLHttpRequest();
	        	xmlhttp.onreadystatechange=function()
	        	{
	        		if(xmlhttp.readyState==4 && xmlhttp.status==200){
	        			document.getElementById("d11").innerHTML=xmlhttp.responseText;	
	        		}	
	        		
	        	};
	        	xmlhttp.open("GET","tryy.jsp",true);
	        	xmlhttp.send();
	    }
	}
</script>
</head>
<body>

<%

if(session.getAttribute("user")!=null)
{
%>




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
        <li><a href="logout.jsp" class="nav">Log out</a></li>
        <li class="divider"></li>
          <li><a href="mail.jsp" class="nav">Messages</a></li>
        <li class="divider"></li>
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
%>
        <li><a href="contact.html" class="nav">Contact Us</a></li>
        <li class="divider"></li>
      </ul>
      
     
    </div>
 
     
    <!-- end of menu tab -->
   
    
 
    
     
      </div>
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
   

<script type="text/javascript">
function fun1()
{
	var x=document.getElementById("pn").value;
	var y=document.getElementById("cat").value;

	var z=document.getElementById("rd1").value;
	var a=document.getElementById("desc").value;
	var b=document.getElementById("t1").value;
	var c=document.getElementById("t2").value;
	var d=document.getElementById("t3").value;
	var e=document.getElementById("t4").value;
	var f=document.getElementById("t5").value;
	
	var g=document.getElementById("amt").value;

	res=true;
	if(x=="")
		{
		document.getElementById("l1").innerHTML="     ! Enter Product Name";
		res=false;
		}
	//if(y=="")
	//{
	//document.getElementById("l2").innerHTML="enter password";
	//res=false;
	//}
	if(z!="new" &&z!="old")
	{
	document.getElementById("l3").innerHTML="     ! Select Model";
	res=false;
	}
	
	if(a=="")
	{
	document.getElementById("l4").innerHTML="     ! Enter Description";
	res=false;
	}
	if(b=="")
	{
	document.getElementById("l5").innerHTML="     ! Enter Name";
	res=false;
	}
	if(c=="")
	{
	document.getElementById("l6").innerHTML="! Enter Email";
	res=false;
	}
	if(d=="")
	{
	document.getElementById("l7").innerHTML="     ! Enter Phone No.  ";
	res=false;
	}
	
	if(e=="")
	{
	document.getElementById("l8").innerHTML="     ! Enter city";
	res=false;
	}
	
	if(f!="tc")
	{
	document.getElementById("l9").innerHTML="     ! Please Select the T&C";
	res=false;
	}
	
	if(g=="")
	{
	document.getElementById("l10").innerHTML="     ! Enter Amount";
	res=false;
	}


	return res;
	
}
</script>

<br>
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
   try
   {
  Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
String x=(String)session.getAttribute("user");%>
    
<div class="hi_box1">
        <div class="center_hi_box1" style="height:100px;	border-radius:10px 10px 10px 10px;" >
        
          <div class="hi_title1" style="color:black;"><a href="cart2.jsp">FAVOURITES</a></div>
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
        catch(Exception ee)
        {
        	System.out.println(ee.getMessage());
        }
		%>   
          
          </div>
         
        </div>

</div>
<div align="center" style="width: 73%;text-align: center;float: left;">
<form action="seller_form_dp.jsp" enctype="multipart/form-data" method="post">
<!--  
<div  align="center" style=" width: 100%; height: 700px;background:url(images/bg.jpg) repeat-x #e4e9ec top;;"> -->
<center>
<table>
<tr><th><h1 style="text-decoration: underline;" >ENTER THE PRODUCT DETAILS</h1></th></tr><br><br>

<tr><td><h2>Product Name</h2></td><td> <input type="text" name="pn" id="pn" /><label style="color:red"  id="l1"></label><br><br></td></tr>

<tr><td><h2>Category</h2></td><td> <select name="cat" id="cat"><br>
<option value="please"> Please Select</option>
<option value="Electronics">Electronics</option>
<option value="homeappliances">Home Appliances</option>
<option value="vehicles">Vehicles</option>
<option value="sports"> Sports</option>
<option value="clothnacc"> Clothing & Accesories</option>
<option value="other">Others</option>
</select><label style="color:red"  id="l2"></label><br><br></td>
<!-- <tr><td><h2>Model</h2></td><td> <input type="radio" name="rd1" id="rd1" value="new" onclick="fun11()"/>New &nbsp;&nbsp; -->
<tr><td><h2>Model</h2></td><td> <input type="radio" name="rd1" id="rd1" value="new" />New &nbsp;&nbsp; 
								<input type="radio" name="rd1"  id="rd1" value="old" />Old<label style="color:red"  id="l3"></label><br><br></td></tr>
<div id="d11" style="width: 100%; background-color: grey"></div>

<tr><td><h2>Upload Photo</h2></td><td> <input type="file" name="pic" id="pic"/><br><br></td></tr>

<tr><td><h2>Amount</h2></td><td> <input type="text" name="amt" id="amt" /><label style="color:red"  id="l10"></label><br><br></td></tr>


<tr><td><h2>Description</h2></td><td> <br><textarea rows="5" cols="55" name="desc" id="desc"></textarea><label style="color:red"  id="l4"></label><br><br></td></tr>

<tr><td><h2>Name</h2></td><td><input type="text" name="t1" id="t1" /><label style="color:red"  id="l5"></label><br><br></td></tr>

<tr><td><h2>Email</h2></td><td><input type="text" name="t2" id="t2"/><label style="color:red"  id="l6"></label><br><br></td></tr>

<tr><td><h2>Phone</h2></td><td><input type="text" name="t3" id="t3"/><label style="color:red"  id="l7"></label><br><br></td></tr>

<tr><td><h2>City</h2></td><td><input type="text" name="t4" id="t4" /><label style="color:red"  id="l8"></label><br><br></td></tr>

<tr><td></td><td><input type="radio" name="t5" id="t5" value="tc"/>Terms & Conditions<label style="color:red"  id="l9"></label><br><br>
<tr><td></td><td><input type="submit" value="SUBMIT" onclick="return fun1()"/>
<input type="reset" value="RESET"/></td></tr>
</table>
</center>
</form>
</div>
</div>
</form>

<%}
else 
{
	response.sendRedirect("login.jsp");
}


%>





</select> 


</body>
</html>