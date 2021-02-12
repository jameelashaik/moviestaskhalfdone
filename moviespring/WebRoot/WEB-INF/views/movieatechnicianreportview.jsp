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
    
    <title>My JSP 'movieatechnicianreportview.jsp' starting page</title>
    
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
  <h1>Movie Technician List</h1>
     <table border="2" width="70%" cellpadding="2"> 
    <tr>
    <th>techname</th>
    <th>work</th>
    <th>renumeration</th>
    <th>qualification</th>
    <th>moviename</th>
    <th>category</th>
    <th>budget</th>
    <th>status</th>
    <th>releasedate</th>
    <th>language</th>
    </tr>
   <c:forEach var="viewmovietech" items="${movieatechnicianlist}"> 
	    <tr>
	    <td>${viewmovietech.techname}</td>
	    <td>${viewmovietech.work}</td>
	    <td>${viewmovietech.techrenumeration}</td>
	    <td>${viewmovietech.qualification}</td>
	    <td>${viewmovietech.moviename}</td>
	    <td>${viewmovietech.category}</td>
	    <td>${viewmovietech.budget}</td>
	    <td>${viewmovietech.status}</td>
	    <td>${viewmovietech.releasedate}</td>
	    <td>${viewmovietech.language}</td>
	    </tr>
	</c:forEach>
    </table>
  </body>
</html>
