<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<c:set var="stuff" value="<%=new Date()%>"/>
<h1><%= "Hello World!" %>
</h1>

Time on the server is ${stuff}

<br/>
<a href="hello-servlet">Hello Servlet</a>
</body>
</html>