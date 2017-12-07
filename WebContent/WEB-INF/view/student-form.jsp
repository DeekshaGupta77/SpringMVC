<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix = "form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration form</title>
</head>
<body>
<h2>Fill in the Details</h2>
<form:form action="processForm" modelAttribute="student">

First Name: <form:input path="firstName"/>

<br><br>

Last Name: <form:input path="lastName"/>

<br><br>

Country: <form:select path="country">
 <form:options items="${student.countryOptions}"/>
</form:select>

<br><br>
Favorite Language: 
  <form:radiobutton path="favoriteLanguage" value="Java"/> Java <br>
<form:radiobutton path="favoriteLanguage" value="Python"/> Python <br>
<form:radiobutton path="favoriteLanguage" value="C#"/> C# <br>
<form:radiobutton path="favoriteLanguage" value="Ruby"/> Ruby
<br><br>

Operating System:
 <form:checkbox path="operatingSystems" value="MacOS"/> MacOS <br>
<form:checkbox path="operatingSystems" value="Windows"/> Windows <br>
<form:checkbox path="operatingSystems" value="Linux"/> Linux <br><br>
<input type="submit" value="Submit"/>
</form:form>
</body>
</html>