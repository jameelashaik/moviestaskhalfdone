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
    
    <title>My JSP 'check.jsp' starting page</title>
    
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
     <form:form action="./moviedetails/save" method="post" modelAttribute="movienameobj" >  
               
          movie name: <form:input path="moviename" />   
                <br><br> 
         Category: <form:input path="category" /> 
               <br><br>  
         Budget: <form:input path="budget" />     
                  <br><br>   
         status: <form:input path="status" />   
        <br><br> 
                <br><br>  
       release date: <form:input type="date" path="releasedate" />    <br><br> 
         Language: <form:input path="language" />         
          
        <br><br>  
                <input type="submit" value="Submit" />      
    </form:form>  
  </body>
</html>
