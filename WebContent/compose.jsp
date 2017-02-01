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
<title>Insert title here</title>
 <script type="text/javascript">
function hi()
{
	var res=true;
var recipient=document.getElementById("t1").value;
var subject=document.getElementById("t2").value;	
var message=document.getElementById("t5").value;
if(recipient=="")
	{
	res=false;
	alert("Cannot send a message without a recipient");
	return res;
	}
if(subject=="")
{
var n=confirm("Send the message without a subject?");
if(n==true)
	res=true;
else 
	res=false;
}

if(message=="")
{
var m=confirm("Send the message without body content");
if(m==true)
	res=true;
else 
	res=false;
}


if(res==true)
	alert("Message Sent");
	
	return res;

}



</script> 
</head>
<body>
     <% 
     
     if (session.getAttribute("user")!=null)
     {	 
    	 
    	 %>
    	 <form action="upload1.jsp" method="post" enctype="multipart/form-data">

   
  <font size="5">
<table>
 
 <tr><td>TO:</td><td>          <input type="text" name="t1" id="t1"><br><br></td></tr>
 
 <tr><td>Subject:</td><td>     <input type="text" name="t2" id="t2"><br><br></td></tr>
  
 <tr><td>Attach File:</td><td> <input type="file" id="t3" name="t3"><br><br></td></tr>
   
           
   
  <tr><td>  Message:</td><td>            <textarea rows="15" cols="90" name="t5" id="t5"></textarea></td></tr>
   
           <tr><td></td><td> <input type="submit" value="Send your Message" onclick="return hi()" ></td></tr>
    </table>
    </font>
 
   
   </form>
   


        
        <%
        
        }
        else
        {
        response.sendRedirect("login.jsp");
        }%>
  </div>

</body>
</html>