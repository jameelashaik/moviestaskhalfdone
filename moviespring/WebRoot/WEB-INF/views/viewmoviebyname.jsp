<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewmoviebyname.jsp' starting page</title>
    
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
    This is my viewmoviebyname page. <br>
    <table border="2" width="70%" cellpadding="2"> 
    <tr>
    <th>moviename</th>
    <th>category</th>
    <th>budget</th>
    <th>status</th>
    <th>releasedate</th>
    <th>language</th>
    </tr>
   <c:forEach var="viewmovie" items="${viewmoviebyname}"> 
	    <tr>
	    <td>${viewmovie.moviename}</td>
	    <td>${viewmovie.category}</td>
	    <td>${viewmovie.budget}</td>
	    <td>${viewmovie.status}</td>
	    <td>${viewmovie.releasedate}</td>
	    <td>${viewmovie.language}</td>
	    </tr>
	</c:forEach>
    </table>
      
  </body>
</html>
