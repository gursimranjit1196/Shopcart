<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
System.out.println("in range");
String x=request.getParameter("var11");
String y=request.getParameter("var22");
System.out.println(x+"\n"+y);
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","gsjsc","gsjschanna");
Statement st=con.createStatement();
String xx=(String)session.getAttribute("user");
System.out.println("in range11");
		if(y.equals("BTW1"))
		{
			System.out.println("in range1");

			ResultSet rs=st.executeQuery("select * from sellername where category='"+x+"' and price<5000");
		while(rs.next())
			{System.out.println("in range122");
			%>
						
			
		<div class="prod_alnmt"> 
			<div class="prod_box" >
	      <div class="center_prods_box" >
	        <div class="product_title" ><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><%=rs.getString(1) %></a>       </div>
	        <div class="product_img"><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><img src="sellerimage/<%=rs.getString(10) %>" height="100%" width="100%" border="0" /></a></div>
	        <div class="prod_price" style="text-align:center;font-size: 25px;"> Price:<span class="price"><%=rs.getString(5) %></span></div>
	        <div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidebuy.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=rs.getInt(11) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>&var6=<%=rs.getString(9) %>" type="hyperlink">Buy Now</a></div>
	        </div>
	      </div>
	      
	      
	      <%}}
	      
		else if(y.equals("BTW2"))
		{
			System.out.println("in range1");

			ResultSet rs=st.executeQuery("select * from sellername where category='"+x+"' and price BETWEEN 5000 AND 10000");
		while(rs.next())
			{System.out.println("in range122");
			%>
						
			
		<div class="prod_alnmt"> 
			<div class="prod_box" >
	      <div class="center_prods_box" >
	        <div class="product_title" ><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><%=rs.getString(1) %></a>       </div>
	        <div class="product_img"><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><img src="sellerimage/<%=rs.getString(10) %>" height="100%" width="100%" border="0" /></a></div>
	        <div class="prod_price" style="text-align:center;font-size: 25px;"> Price:<span class="price"><%=rs.getString(5) %></span></div>
	        <div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidebuy.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=rs.getInt(11) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>&var6=<%=rs.getString(9) %>" type="hyperlink">Buy Now</a></div>
	        </div>
	      </div>
	      
	      
	      <%}}  
		else if(y.equals("BTW3"))
		{
			System.out.println("in range1");

			ResultSet rs=st.executeQuery("select * from sellername where category='"+x+"' and  price BETWEEN 10000 AND 15000");
		while(rs.next())
			{System.out.println("in range122");
			%>
						
			
		<div class="prod_alnmt"> 
			<div class="prod_box" >
	      <div class="center_prods_box" >
	        <div class="product_title" ><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><%=rs.getString(1) %></a>       </div>
	        <div class="product_img"><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><img src="sellerimage/<%=rs.getString(10) %>" height="100%" width="100%" border="0" /></a></div>
	        <div class="prod_price" style="text-align:center;font-size: 25px;"> Price:<span class="price"><%=rs.getString(5) %></span></div>
	        <div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidebuy.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=rs.getInt(11) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>&var6=<%=rs.getString(9) %>" type="hyperlink">Buy Now</a></div>
	        </div>
	      </div>
	      
	      
	      <%}}
		else if(y.equals("BTW4"))
		{
			System.out.println("in range1");

			ResultSet rs=st.executeQuery("select * from sellername where category='"+x+"' and price>15000");
		while(rs.next())
			{System.out.println("in range122");
			%>
						
			
		<div class="prod_alnmt"> 
			<div class="prod_box" >
	      <div class="center_prods_box" >
	        <div class="product_title" ><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><%=rs.getString(1) %></a>       </div>
	        <div class="product_img"><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><img src="sellerimage/<%=rs.getString(10) %>" height="100%" width="100%" border="0" /></a></div>
	        <div class="prod_price" style="text-align:center;font-size: 25px;"> Price:<span class="price"><%=rs.getString(5) %></span></div>
	        <div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidebuy.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=rs.getInt(11) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>&var6=<%=rs.getString(9) %>" type="hyperlink">Buy Now</a></div>
	        </div>
	      </div>
	      
	      
	      <%}} 
	      
		else if(y.equals("NEW"))
	      {
	      ResultSet rs=st.executeQuery("select * from sellername where model IN('new') and category='"+x+"' ");
	System.out.println("new");
	while(rs.next())
	{
		System.out.println("new");
		%>
		<div class="prod_alnmt"> 
			<div class="prod_box" >
	      <div class="center_prods_box" >
	        <div class="product_title" ><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><%=rs.getString(1) %></a>       </div>
	        <div class="product_img"><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><img src="sellerimage/<%=rs.getString(10) %>" height="100%" width="100%" border="0" /></a></div>
	        <div class="prod_price" style="text-align:center;font-size: 25px;"> Price:<span class="price"><%=rs.getString(5) %></span></div>
	        <div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidebuy.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=rs.getInt(11) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>&var6=<%=rs.getString(9) %>" type="hyperlink">Buy Now</a></div>
	        </div>
	      </div>
	      
	      
	      <%}}
	      
	      else
	      {
	      ResultSet rs=st.executeQuery("select * from sellername where model IN('old') and category='"+x+"' ");
	
	while(rs.next())
	{
		%>
		<div class="prod_alnmt"> 
			<div class="prod_box" >
	      <div class="center_prods_box" >
	        <div class="product_title" ><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><%=rs.getString(1) %></a>       </div>
	        <div class="product_img"><a href="1details.jsp?var1=<%=rs.getInt(11)%>"><img src="sellerimage/<%=rs.getString(10) %>" height="100%" width="100%" border="0" /></a></div>
	        <div class="prod_price" style="text-align:center;font-size: 25px;"> Price:<span class="price"><%=rs.getString(5) %></span></div>
	        <div class="prod_button" style="color:#ff8a00; font-size: 23px; text-align: center; text-decoration: underline;"><a href="decidebuy.jsp?var1=<%=session.getAttribute("user")%>&var2=<%=rs.getInt(11) %>&var3=<%=rs.getString(1) %>&var4=<%=rs.getString(10) %>&var5=<%=rs.getString(5) %>&var6=<%=rs.getString(9) %>" type="hyperlink">Buy Now</a></div>
	        </div>
	      </div>
	      
	      
	      <%}} %>  
	      
	        
	      
	       
	  
	  
	  
	  </div>


</body>
</html>