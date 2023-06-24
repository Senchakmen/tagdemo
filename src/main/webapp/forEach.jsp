<%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 17-Jul-22
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
    <%
        String[] names = new String[] {"Andrii", "Nastia", "Ira", "Volodymyr", "Natalia"};
        pageContext.setAttribute("myNames", names);
    %>
</head>
<body>

<c:forEach var="tempName" items="${myNames}">
    ${tempName} <br/>
</c:forEach>

</body>
</html>
