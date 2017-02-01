<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="style2.css" />

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


<title>Insert title here</title>
</head>
<body>

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


<div id="header">

<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">S</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">H</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">O</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">P</p>
<p style="font-size: 90px;font-family:AR DESTINE;COLOR:red;float:left;margin-left: 30px ">K</p>
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
    
      <% String zx=(String)session.getAttribute("user");
      if(zx==null)
      {%>
        <li><a href="login.jsp" class="nav">My account</a></li>
        <li class="divider"></li>
      <% }
      %>        
         <% String zrx=(String)session.getAttribute("user");
      if(zrx!=null)
      {%>
        <li><a href="logout.jsp" class="nav">Logout</a></li>
        <li class="divider"></li>
      <% }
      %>        
          <% String azrx=(String)session.getAttribute("user");
      if(azrx!=null)
      {%>
        <li><a href="mail.jsp" class="nav">Messages</a></li>
        <li class="divider"></li>
      <% }
      %>
        <li><a href="contact.html" class="nav">Contact Us</a></li>
        <li class="divider"></li>
      
      
      
    </div>
    </div>
    <%
      if(azrx!=null)
      {%>
        
                <p style=" font-size: 18px;float: right;margin-right: 1%;">Hi, <a href="hi.jsp" > <%=session.getAttribute("user") %> </a></p>
                
        <% }
      %>
      
 
 
      <!-- -------------LEFT CONTENT---------- -->
    
<div class="left_content">
<!-- <h1 style="text-align:center;"> SPECIALS</h1> -->
<marquee>




</marquee>

</div>

<%



try{
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
	Statement st=con.createStatement();
	int x=Integer.parseInt(request.getParameter("var1"));

	ResultSet rs=st.executeQuery("select * from sellername where id='"+x+ "'");
	
	while(rs.next())
	{

		//String pname=rs.getString(1);
		//String pprice=rs.getString(5);
		%>
		<div class="prod_alnmt"> 

	     
	    
	      <div class="prod_alnmt"> 
 
 
  
      <div class="prod_box_big" >
        <div class="center_prod_box_big" >
          <div class="details_big_box"	">
          
            <div class="product_title_big"><%=rs.getString(1) %></div><br><br>
            <table>
                          <tr><td ></td><td style="font-size: 13px"><span class="blue"><img  class="fancybox"  src="sellerimage/<%=rs.getString(10) %>" data-big="sellerimage/<%=rs.getString(10) %>" height="300px" width="100%" border="0" /></span><br /></td></tr>
            
            <tr><td><div class="specifications"  style="font-size: 20px"> Available: </td><td style="font-size: 13px"><span class="blue">In stock</span><br /></td>
              <tr><td style="font-size: 20px">Warranties: </td><td style="font-size: 13px"><span class="blue">24 months</span><br /></td></tr>
              <tr><td style="font-size: 20px">Transport:</td><td style="font-size: 13px"> <span class="blue"> Delivery services company</span><br /></td></tr>
              <tr><td style="font-size: 20px">Category :</td><td style="font-size: 13px"><span class="blue"><%=rs.getString(2) %></span><br /></td></tr>
              <tr><td style="font-size: 20px">Model :</td><td style="font-size: 13px"><span class="blue"><%=rs.getString(3) %></span><br /></td></tr>
              <tr><td style="font-size: 20px">Description:</td><td style="font-size: 13px"><span class="blue"> <%=rs.getString(4) %></span><br /></td></tr>
              <tr><td style="font-size: 20px">Price:</td><td style="font-size: 13px"><span class="blue">Rs.<%=rs.getInt(5)%></span><br /></td></tr>
              <tr><td style="font-size: 20px">Email:</td><td style="font-size: 13px"><span class="blue"><%=rs.getString(6) %></span><br /></td></tr>
              <tr><td style="font-size: 20px">Phone:</td><td style="font-size: 13px"><span class="blue"><%=rs.getInt(7) %></span><br /></td></tr>
              <tr><td style="font-size: 20px">City:</td><td style="font-size: 13px"><span class="blue"><%=rs.getString(8) %></span><br /></td></tr>
            </div>
       
           <tr><td></td><td><br><br><div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidefav.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=Integer.parseInt(request.getParameter("var1")) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>">FAVOURITES</a> </div></td></tr>
              <tr><td></td><td><br><br><div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidebuy.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=rs.getInt(11) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>&var6=<%=rs.getString(9) %>" type="hyperlink">Buy Now</a></div></td></tr>
              
	       
            </table>
            
        </div>
      
 </div>
 
 </div>    
		

		<%
		 
	}
	}

catch(Exception e)
{
	out.println(e.getMessage());
}
	


%>	

		
		
	
	















</body>
</html>