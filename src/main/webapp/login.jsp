<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/16
  Time: 22:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String email = request.getParameter("email").trim().toLowerCase();
    String password = request.getParameter("password");

    try {
        new Driver();
        Connection connection = DriverManager.getConnection("jdbc:mysql://192.168.10.142:3306/dbj2?user=root&password=ak47m4a1");
        String sql = "SELECT * FROM dbj2.users WHERE email=? AND password = ?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,email);
        preparedStatement.setString(2,password);
        // 执行数据库查询语句
        ResultSet resultSet = preparedStatement.executeQuery();
            // 对查询结果判断
        if(resultSet.next()){
            session.setAttribute("emali",email);
            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("massage","invalid email or password");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
        }catch (SQLException e) {
        e.printStackTrace();
    }

%>
</body>
</html>
