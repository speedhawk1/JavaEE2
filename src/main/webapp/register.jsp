<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="com.mysql.jdbc.StringUtils" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/14
  Time: 1:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
// 将注册信息提交到数据库
    //  parameter fundation of the DB;
    String email = request.getParameter("email").trim().toLowerCase();
    String password = request.getParameter("password");
    String[] subject = request.getParameterValues("subject"); //返回一个数组
    // start the MySQL engine;
    try {
        new Driver();
        // connect the DB;
        Connection connection = DriverManager.getConnection("jdbc:mysql://192.168.10.142:3306/dbj2?user=root&password=ak47m4a1");
        String sql = "INSERT INTO dbj2.users VALUE(NULL,?,?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,email);
        preparedStatement.setString(2,password);
        preparedStatement.setString(3, Arrays.asList(subject).toString());

        preparedStatement.executeUpdate();
        preparedStatement.close();
        connection.close();
    } catch (SQLException e) {
        e.printStackTrace();
    }

    response.sendRedirect("index.jsp");
    // 连接数据库
    //ps:以上这些类库最好进一步深层次理解一下，有助于今后更灵活地运用。
    //通过这样的方法不断巩固语法的基础，并加深对每个类、接口及其域和方法的理解。
%>
</body>
</html>
