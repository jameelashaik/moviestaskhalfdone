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
    
    <title>My JSP 'pay.jsp' starting page</title>
    
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
    	<div class="container col-xs-12 col-sm-12 col-md-11 col-lg-11">
	<table class="table table-control table-striped table-bordered table-condensed table-hover">
		<thead>
			<tr id="head1">
			<th colspan="12"><h1>Employees payslip List</h1></th>
			</tr>
			<tr>
			<th>EmpId</th><th>Name</th><th>grosstotal</th>
			<th>dayspresent</th><th>Salary</th><th>basicpay</th><th>DA</th><th>HRA</th><th>PF</th><th>PT</th><th>NETSALARY</th> 
			</tr>
		</thead>
		<tbody>
			<tr>
   <c:forEach var="emp" items="${getsalaryp}" >   
	   <tr>  

	   <td>${emp.id}</td>  
	   <td>${emp.name}</td>  
	   <td>${emp.gross_total}</td>  
	   <td>${emp.dayspresent}</td>  
	   <td>${emp.salary}</td> 
	   <td>${emp.basic_pay} </td> 
	   <td>${emp.da}</td> 
		<td>${emp.hra}</td>
	   <td>${emp.pf}</td> 
	   <td>${emp.pt}</td>
	   <td>${emp.net_salary}</td>  
	   </tr>  
   </c:forEach> 
			</tr>
		</tbody>
	</table>  
  </body>
</html>
