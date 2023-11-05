<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%

    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb?characterEncoding=utf-8", "root", "password");
    PreparedStatement ps = con.prepareStatement("select * from login where email='" + email + "' and password='" + password + "'");
    ResultSet rs = ps.executeQuery();
    if (rs.next()) {
        out.print("<script>alert('Welcome to admin zone ');window.location.href='index.jsp'</script>");
        
    } else {
        out.print("<script>alert('Invalid user');window.location.href='index.jsp'</script>");
    }
%>