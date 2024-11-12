<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd");
    String name = request.getParameter("name");
    String number = request.getParameter("number");
    String email = request.getParameter("email");
    String birthdate = request.getParameter("birthdate");
   
    Connection conn = null;
    PreparedStatement pstmt = null;
    String str = "";

    String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
    String dbId = "jspid";
    String dbPass = "jsppass";

    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);

    String sql = "INSERT INTO membership VALUES (?, ?, ?, ?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, passwd);
    pstmt.setString(3, name);
    pstmt.setString(4, number);
    pstmt.setString(5, email);
    pstmt.setString(6, birthdate);
    pstmt.executeUpdate();
    
    str = "회원가입에 성공하셨습니다.";

%>

<html>
<head>
    <title>레코드 추가</title>
</head>
<body>
    <%= str %>
</body>
</html>
