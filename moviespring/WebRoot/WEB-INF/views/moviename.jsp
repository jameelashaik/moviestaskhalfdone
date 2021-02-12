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
    
    <title>My JSP 'moviename.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>

	select {
  border: 0 none;
  color: #FFFFFF;
  
  font-size: 20px;
  font-weight: bold;
  padding: 2px 10px;
  width: 430px;
  *width: 350px;
background-color:#f1f1f1;
color:grey;
}
#head1{
background-color:black;
color:white;
}
	input[type=date], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=date]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
</style>
</head>
  
  <body>

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
       release date: <form:input path="releasedate" />    <br><br> 
         Language: <form:input path="language" />         
          
  


        <br><br> 
 
        <%System.out.println("===check===="); %>
        <input type="submit" value="Submit" />      
    </form:form>  

  </body>
</html>
