<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?characterEncoding=utf-8", "root", "password");
    PreparedStatement ps=con.prepareStatement("select email from login where email=? and password=?");
    %>