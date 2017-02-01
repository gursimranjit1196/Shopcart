<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">

function fun1()
{
	var xmlhttp= new XMLHttpRequest();
	xmlhttp.onreadystatechange=function()
	{
		if(xmlhttp.readyState==4 && xmlhttp.status==200)
			{
			document.getElementById("d1").innerHTML=xmlhttp.responseText;
			}
	}
	xmlhttp.open("GET","checkbox.jsp",true);
	xmlhttp.send();
	
	
	}




</script>
<div style="height:800px;width:100%;background-color: red;float:left">
<div style="background-color: yellow;height:500px;width:48%;float:left;">
<center>
<h1>ENTER YOUR DETAILS</h1>
<table>
<tr><td>Name:</td><td><input type="text" name="t1" id="t1"/></td></tr>	
<tr><td>Address:</td><td><input type="text" name="t2" id="t2"/></td></tr>
<tr><td>Phone no.:</td><td><input type="text" name="t3" id="t3"/></td></tr>
<tr><td>Alt Phone No:</td><td><input type="text" name="t4" id="t4"/></td></tr><br><br>
<tr><td>Mode of Payment:</td><td><input type="checkbox" name="ch1" id="ch1" value="cash"/>Cash on Delivery &nbsp;&nbsp;<input type="button" name="ch1" id="ch1" value="Credit Card" onclick="fun1()" /></td></tr><br><br>
<tr><td></td><td><div></div><br><br></td></tr>

<tr><td></td><td><input type="submit" value="Submit">&nbsp;<input type="reset" value="Reset"></td></tr>

</table>
</center>




</div>

<div id="d1" style="background-color: orange;height:500px;width:48%;float:left;margin-top: 50px">


dsd
</div>

</div>
</body>
</html>