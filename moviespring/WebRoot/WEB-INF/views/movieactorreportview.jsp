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
    
    <title>My JSP 'movieactorreportview.jsp' starting page</title>
    
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
  <h1>movieActorList</h1>
    This is my JSP page. <br>
   <table border="2" width="70%" cellpadding="2"> 
    <tr>
    <th>actorname</th>
    <th>charecter</th>
    <th>moviename</th>
    <th>category</th>
    </tr>
   <c:forEach var="viewmovieactor" items="${movieactorlist}"> 
	    <tr>
	    <td>${viewmovieactor.actorname}</td>
	    <td>${viewmovieactor.charecter}</td>
	    <td>${viewmovieactor.moviename}</td>
	    <td>${viewmovieactor.category}</td>
	    </tr>
	</c:forEach>
    </table>
  </body>
</html>
