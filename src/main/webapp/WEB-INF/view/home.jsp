<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

	<h2>Welcome!</h2>
	
	<hr>
	
	<!-- display user name and role -->
	
	<p>
		User: <security:authentication property="principal.username" />
		<br><br>
		<!-- Role: <security:authentication property="principal.authorities" /> -->
		
	</p>
	
	<hr>
	
	<!-- Employee options -->
	<security:authorize access="hasRole('EMPLOYEE')">
		<p>
			<h2>Employee actions</h2>
			<a href="${pageContext.request.contextPath}/user">View regulations</a>
			<a href="${pageContext.request.contextPath}/user">Update comments of regulations</a>
			<a href="${pageContext.request.contextPath}/user">Track compliance</a> 
		</p>
	</security:authorize>
	
	
	
	<!-- Admin options -->
	<security:authorize access="hasRole('ADMIN')">
	<p>
		<h2>Employee actions</h2>
		<a href="${pageContext.request.contextPath}/admin">Add</a>
		<a href="${pageContext.request.contextPath}/admin">Edit</a>
		<a href="${pageContext.request.contextPath}/admin">Delete</a>
		<a href="${pageContext.request.contextPath}/admin">View</a>
		<hr>
		
		<h2>Department actions</h2>
		<a href="${pageContext.request.contextPath}/admin">Add</a>
		<a href="${pageContext.request.contextPath}/admin">View</a>
		<hr>
		
		<h2>Regulation actions</h2>
		<a href="${pageContext.request.contextPath}/admin">Create</a>
		<a href="${pageContext.request.contextPath}/admin">View</a>
		<hr>  
	</p>
	</security:authorize>
	
	
	
	<!-- Add a logout button -->
	<form:form action="${pageContext.request.contextPath}/logout" 
			   method="POST">
	
		<input type="submit" value="Logout" />
	
	</form:form>

</body>
</html>