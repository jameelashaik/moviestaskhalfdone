<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'detailsactor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
     <form:form action="./moviedetails/actordetailssave" method="post" modelAttribute="movienameobj" >  
               
          actor name: <form:input path="actorname" />   
                <br><br> 
         charecter: <form:input path="charecter" /> 
               <br><br>  
         renumeration: <form:input path="renumeration" />     
                  <br><br>   
         language: <form:input path="language" />   
        <br><br> 
        
          
        <br><br>  
                <input type="submit" value="Submit" />      
    </form:form>  
  </body>
</html>
