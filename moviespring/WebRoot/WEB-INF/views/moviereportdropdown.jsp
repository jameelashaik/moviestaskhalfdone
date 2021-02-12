<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'moviereportdropdown.jsp' starting page</title>
    
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
     <form:form method="post" modelAttribute="movienameobj"> 

      Movie Name:  <select name="movieId" id="movieId">
		     <c:forEach items="${movielist}" var="mv">
		        <option value="${mv.moviename}">${mv.moviename}</option>
		        
		    </c:forEach></select><br></br>
		    <c:forEach items="${movielist}" var="mvn"></c:forEach>
		 <a href="moviedetails/moviedetailsview/${mvn.moviename}">moviename</a>
	<form:hidden path="moviename"/>
	<form:hidden path="category"/>
	<form:hidden path="budget"/>
	<form:hidden path="status"/>
	<form:hidden path="releasedate"/>
	<form:hidden path="language"/>
	 <input type="submit" value="Submit" />  
        <br><br> 
		</form:form>    
  </body>
</html>
