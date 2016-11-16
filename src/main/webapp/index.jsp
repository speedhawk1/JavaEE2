<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/13
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Sign up</title>
  </head>
  <body>
  <h1>index page</h1>
  <%=session.getId()%>
  <%--获取登陆ID--%>
  <form action="/login.jsp" method="post">
    <input type="text" name="email" placeholder="EMAIL"><br>
    <input type="text" name="password" placeholder="PASSWORD"><br>
    <input type="submit" value="LOG IN">
  </form>
  <h1 >
    <a href="signup.jsp">Sign up</a>
  </h1>
  </body>
</html>
