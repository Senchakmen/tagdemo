<%--
  Created by IntelliJ IDEA.
  User: asench
  Date: 22-Jul-22
  Time: 10:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<c:set var="theLocale"
       value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="mylabels"/>
<html>
<head>
    <title>I18 messages</title>
</head>
<body>

    <a href="i18n-messages-test.jsp?theLocale=ua_UA">Ukrainian (UA)</a>
    |
    <a href="i18n-messages-test.jsp?theLocale=en_US">English (US)</a>
    |
    <a href="i18n-messages-test.jsp?theLocale=es_ES">Spanish (ES)</a>
    |
    <a href="i18n-messages-test.jsp?theLocale=de_DE">German (DE)</a>

    <hr>

    Selected locale: ${theLocale} <br/>

    <fmt:message key="label.greeting"/> <br/> <br/>
    <fmt:message key="label.firstname"/> <i>Andrii</i> <br/>
    <fmt:message key="label.lastname"/> <i>Senchakevych</i> <br/>
    <fmt:message key="label.welcome"/> <br/>
</body>
</html>
