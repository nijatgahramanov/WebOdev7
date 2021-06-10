<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="js/rest.js"></script>
<html>
<head>
<title>User Management Application</title>

	<style>
	    table, th, td{
	        border: 1px solid #666;
	    }
	    table th, table td{
	        padding: 10px;
	    }
	</style>
	
</head>
<body>
	<div align="center">
		<h1>User Management</h1>
		<h2>
			<a href="/jsp-servlet-hibernate-mysql-crud-example/user-form.jsp">Add New User</a> &nbsp;&nbsp;&nbsp;
			<a href="/jsp-servlet-hibernate-mysql-crud-example/user-list.jsp">List All Users</a>
			<a href="/jsp-servlet-hibernate-mysql-crud-example/rest/userInfo">Get User details</a>

		</h2>
	</div>
	<div align="center">
		<c:if test="${user != null}">
			<form action="update" method="post">
		</c:if>
		<c:if test="${user == null}">
			<form action="insert" method="post">
		</c:if>
		<table>
			<caption>
				<h2>
					<c:if test="${user != null}">
               Edit User
              </c:if>
					<c:if test="${user == null}">
               Add New User
              </c:if>
				</h2>
			</caption>
			<c:if test="${user != null}">
				<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
			</c:if>
			
			<tr>
				<th>User Id:</th>
				<td><input type="text" name="id" size="45"
					value="<c:out value='${user.id}' />" /></td>
			</tr>
			
			<tr>
				<th>User Name:</th>
				<td><input type="text" name="name" size="45"
					value="<c:out value='${user.name}' />" /></td>
			</tr>
			<tr>
				<th>User Email:</th>
				<td><input type="text" name="email" size="45"
					value="<c:out value='${user.email}' />" /></td>
			</tr>
			<tr>
				<th>Country:</th>
				<td><input type="text" name="country" size="15"
					value="<c:out value='${user.country}' />" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Save" /></td>
			</tr>
		</table>
		</form>
	</div>
</body>
</html>