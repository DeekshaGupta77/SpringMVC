<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	.error{color:red;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Form</title>
 
</head>
<body>
<h2><i>Fill out the form</i></h2>	

  <form:form path="processForm" modelAttribute="customer">
First Name: <form:input path="firstName"/>
<br><br>
Last Name: <form:input path="lastName"/>
  <form:errors path="lastName" cssClass="error"></form:errors>
<br><br>

freePasses: <form:input path="freePasses"/>
  <form:errors path="freePasses" cssClass="error"></form:errors>
<br><br>
<input type="submit" value="Submit"/>
</form:form>


</body>
</html>