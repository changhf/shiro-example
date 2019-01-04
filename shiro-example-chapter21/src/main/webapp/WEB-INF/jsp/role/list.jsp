<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="zhangfn" uri="http://github.com/zhangkaitao/tags/zhang-functions" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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

<c:if test="${not empty msg}">
    <div class="message">${msg}</div>
</c:if>

<shiro:hasPermission name="role:create">
    <a href="<%=basePath%>/role/create">角色新增</a><br/>
</shiro:hasPermission>
<table class="table">
    <thead>
        <tr>
            <th>角色名称</th>
            <th>角色描述</th>
            <th>拥有的资源</th>
            <th>操作</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${roleList}" var="role">
            <tr>
                <td>${role.role}</td>
                <td>${role.description}</td>
                <td>${zhangfn:resourceNames(role.resourceIds)}</td>
                <td>
                    <shiro:hasPermission name="role:update">
                        <a href="<%=basePath%>/role/${role.id}/update">修改</a>
                    </shiro:hasPermission>

                    <shiro:hasPermission name="role:delete">
                        <a href="<%=basePath%>/role/${role.id}/delete">删除</a>
                    </shiro:hasPermission>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>