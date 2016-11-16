<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/14
  Time: 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/register.jsp" method="post">
    <input type="text" name="email" placeholder="EMAIL"><br>
    <input type="text" name="password" placeholder="PASSWORD"><br>
    <select name="subject" multiple="multiple">
        <option value="C++">C++</option>
        <option value="JAVA">JAVA</option>
        <option value="Python">Python</option>
    </select>
    <br>
    <input type="submit" value="submit">
</form>
</body>
</html>
