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

		</h2>
	</div>
	<div align="center">
	
	<h2>List of Users</h2>
		<table border="1">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Country</th>
				<th>Actions</th>
			</tr>
			<c:forEach var="user" items="${listUser}">
				<tr>
					<td><c:out value="${user.id}" /></td>
					<td><c:out value="${user.name}" /></td>
					<td><c:out value="${user.email}" /></td>
					<td><c:out value="${user.country}" /></td>
					<td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>