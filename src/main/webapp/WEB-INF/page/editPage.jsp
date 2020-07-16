<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>

    <link href="<c:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>

    <c:choose>
        <c:when test="${empty user.email}">
            <title>Add</title>
        </c:when>
        <c:otherwise>
            <title>Edit</title>
        </c:otherwise>
    </c:choose>
</head>

<body>
<c:url value="/add" var="addUrl"/>
<c:url value="/edit" var="editUrl"/>
<form action="${empty user.email ? addUrl : editUrl}" name="user" method="POST">
    <c:choose>
        <c:when test="${!empty user.email}">
            <p>Edit user</p>
            <input type="hidden" name="id" value="${user.id}">
        </c:when>
        <c:otherwise>
            <p>Add new user</p>
        </c:otherwise>
    </c:choose>
    <p><input type="text" name="firstName" placeholder="first name" value="${user.firstName}" maxlength="100" required>
    <p><input type="text" name="lastName" placeholder="last name" value="${user.lastName}" maxlength="100" required>
    <p><input type="text" name="email" placeholder="@-mail" value="${user.email}" maxlength="100" required>

    <p>
        <c:set value="Add" var="add"/>
        <c:set value="Edit" var="edit"/>
        <input type="submit" value="${empty user.email ? add : edit}">
    </p>

</form>
</body>
</html>