<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    basePath = basePath.substring(0,basePath.length());
%>
<html>
<head>
    <title>Shiro综合案例</title>
    <link rel="stylesheet" href="<%=basePath%>/static/css/layout-default-latest.css">
</head>
<body>

<iframe name="content" class="ui-layout-center"
        src="<%=basePath%>/welcome" frameborder="0" scrolling="auto"></iframe>
<div class="ui-layout-north">
    欢迎[<span id="username"><shiro:principal/></span>]学习Shiro综合案例，<a href="<%=basePath%>/logout">退出</a>
    |
    <a href="<%=basePath%>/runas" target="content">切换身份</a>
</div>
<div class="ui-layout-south">
    获取源码：<a href="https://github.com/zhangkaitao/shiro-example" target="_blank">https://github.com/zhangkaitao/shiro-example</a>
</div>
<div class="ui-layout-west">
    功能菜单<br/>
    <c:forEach items="${menus}" var="m">
        <a href="<%=basePath%>/${m.url}" target="content">${m.name}</a><br/>
    </c:forEach>
</div>


<script src="<%=basePath%>/static/js/jquery-1.11.0.min.js"></script>
<script src="<%=basePath%>/static/js/jquery.layout-latest.min.js"></script>
<script>
    $(function () {
        $(document).ready(function () {
            $('body').layout({ applyDemoStyles: true });
        });
    });
</script>
</body>
</html>