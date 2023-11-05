<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String name=request.getParameter("name");
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    String dob=request.getParameter("dob");
    String address=request.getParameter("address");
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?characterEncoding=utf-8", "root", "password");
    String query1="insert into registration values('"+name+"','"+email+"','"+password+"','"+dob+"','"+address+"') ";
    String query2="insert into login values('"+email+"','"+password+"')";
    PreparedStatement ps1=con.prepareStatement(query1);
    PreparedStatement ps2=con.prepareStatement(query2);
    ps1.execute();
    ps2.execute();
    out.print("<script>alert('Registration is done');window.location.href='index.jsp';</script>");
    %>
