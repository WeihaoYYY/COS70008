<%--
  Created by IntelliJ IDEA.
  User: Weihao
  Date: 13/05/2023
  Time: 12:54 am
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form:form action="ut22" method="post" modelAttribute="admin" enctype="multipart/form-data">
    Name: <form:input path="name"/>
    <input type="file" name="file">
    <input type="submit" value="Submit">
</form:form>

</body>
</html>
