<%@ page import="com.asench.tagdemo.Student" %>
<%@ page import="java.util.*" %><%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 22-Jul-22
  Time: 9:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Student> students = new ArrayList<>();
    students.add(new Student("Andrii", "Senchakevych", true));
    students.add(new Student("Nastia", "Senchakevych", false));
    students.add(new Student("Natalia", "Senchakevych", false));
    students.add(new Student("Ira", "Senchakevych", false));
    students.add(new Student("Volodia", "Senchakevych", false));

    pageContext.setAttribute("students", students);
%>

<html>
<head>
    <title>Student foreach</title>
</head>
<body>

    <table border="1">

    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Gold Customer</th>
    </tr>

    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.firstName}</td>
            <td> ${student.lastName}</td>
            <td>${student.isGoldCustomer}</td>
        </tr>
    </c:forEach>
    </table>
</body>
</html>
