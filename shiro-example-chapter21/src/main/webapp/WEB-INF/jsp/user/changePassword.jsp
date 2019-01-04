<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    basePath = basePath.substring(0,basePath.length());
%>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="<%=basePath%>/static/css/css.css">
</head>
<body>

    <form method="post">
        <div class="form-group">
            <label for="newPassword">新密码：</label>
            <input type="text" id="newPassword" name="newPassword"/>
        </div>
        <input type="submit" value="${op}">
    </form>

</body>
</html>