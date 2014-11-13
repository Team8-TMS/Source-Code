<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.services.*"%>
    <%@ page import="com.entities.*"%>
    <%@ page import="java.util.List" %>
    <%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>Welcome to TMS</title>
</head>

<body>
<div id="container">
		 <%@include file="header.jsp" %>
       
         <%@include file="site_navigation.jsp" %>
        
        <%@include file="leftpane_navigation.jsp" %>
        
        
        
        
		<div id="content">
        
        
        <div id="content_top"></div>
        <div id="content_main">
        	<h2><u>Sponsors for Tournament</u></h2>
<p>&nbsp;</p>
           	<table border="0" bordercolor="#000033" width="100%">
           	<tr><td><h3>Sponsor</h3></td>
           	<td><h3>Amount</h3></td></tr>
           	           	
           	<%
           	wbservice wb=new wbservice();
           	User user=(User)session.getAttribute("User");
           	
           	List<Transaction> trans=wb.getTransactions();
           	for(Transaction t: trans){
           		if(t.getTid().hashCode()==user.getTid().hashCode()){
           		if(t.getTransType().equalsIgnoreCase("CR")){	
           		
           	
           	 %>
           	<tr><td><%=t.getReason()%></td>
           	<td><%=t.getAmount()%></td>
           	</tr>
           	 
           	<%}}}
           	%>
           	
           	</table>
           	<p>&nbsp;</p><h3>OverAll Budget: <%
           	double sum=0;
           	for(Transaction t1: trans){
           		if(t1.getTid().hashCode()==user.getTid().hashCode()){
           			if(t1.getTransType().equalsIgnoreCase("CR")){
           				sum+=t1.getAmount().doubleValue();
           			}
           			else
           				sum-=t1.getAmount().doubleValue();
           		}
           	}out.println(sum);
           	%></h3>
           	<p>&nbsp;</p>
           	<p>&nbsp;</p>
           	<p>&nbsp;</p>
           	<p><a href="AddSponsor.jsp" name="Add Sponsor">Add Sponsor</a></p>
       	  <!-- <h3>Template Notes</h3>
       	  <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
        	<p>&nbsp;</p>
		  <h3>More information</h3>
        	<p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
       	  <p>&nbsp;</p>
        	<h3>Template Notes</h3>
            <p> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
          <p></p> -->
<p>&nbsp;</p>
        </div>
        <div id="content_bottom"></div>
        <%@include file="footer.jsp" %>
   </div>


</body>
</html>