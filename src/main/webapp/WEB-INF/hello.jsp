<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Weihao
  Date: 7/05/2023
  Time: 1:00 am
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>hello world</h1>
    <a href="${pageContext.request.contextPath}/item/jump">JUMP</a>

    <p>${sb}</p><br/>
    <p>${admin}</p><br/><br/>
    <p>${list}</p><br/><br/>


    <c:set var="items" value="${['Apple', 'Banana', 'Orange']}" />

    <%-- 使用<c:forEach>标签循环输出列表元素 --%>
    <c:forEach items="${items}" var="fruit">
        <p>${fruit}</p>
    </c:forEach>

    <table border="1" cellpadding="5">
        <tr>
            <th>Customer ID</th>
            <th>Agent Name</th>
        </tr>

        <c:forEach items="${sb2}" var="ad" >  <!--varStatus获取索引-->
            <tr>
                <td>${ad.aid}</td>
                <td>${ad.name}</td>  <!--为什么这里显示name而不是customer name，因为这里对应的是getName方法-->
                <td>
                    <a href="${pageContext.request.contextPath}/item/detail?id=${ad.aid}">Edit</a>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
