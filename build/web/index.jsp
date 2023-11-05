<%-- 
    Document   : index
    Created on : 7 Oct, 2023, 2:48:51 PM
    Author     : Garima
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration And Login</title>
        <link rel="stylesheet" href="css/index.css"/>
    </head>
    <body>
        <center><h1>User Registration and Login Page</h1></center>
        <div class="container">
            <div id="left">
                <h1>Login</h1>
                <form method="post" action="logincode.jsp">
                    <table >
                        <tr>
                            <td>Enter your email: </td>
                            <td>
                                <input type="email" name="email">
                            </td>
                        </tr>
                        <tr>
                            <td>Enter your password: </td>
                            <td>
                                <input type="password" name="password">
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn">Login Here!</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
            <div id="right">
                <h1>Registration</h1>
                <form method="post" action="code.jsp">
                    <table>
                        <tr>
                            <td>Enter your name:</td>
                            <td>
                                <input type="text" name="name">
                            </td>
                        </tr>
                        <tr>
                            <td>Enter your email:</td>
                            <td>
                                <input type="email" name="email">
                            </td>
                        </tr>
                        <tr>
                            <td>Enter your password:</td>
                            <td>
                                <input type="password" name="password">
                            </td>
                        </tr>
                        <tr>
                            <td>Enter your DOB</td>
                            <td>
                                <input type="date" name="dob">
                            </td>
                        </tr>
                        <tr>
                            <td>Enter your Address:</td>
                            <td>
                                <textarea name="address"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button type="submit" class="btn1">Registration Here!</button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
