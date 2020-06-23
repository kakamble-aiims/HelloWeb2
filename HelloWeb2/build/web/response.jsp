<%-- 
    Document   : response
    Created on : 9 Jun, 2020, 10:53:26 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="org.newpackage.hello.DetailsHandler" />
        <jsp:setProperty name="mybean" property="id"/>
        <jsp:setProperty name="mybean" property="name"/>
        <jsp:setProperty name="mybean" property="age"/>
        <jsp:setProperty name="mybean" property="occupation"/>
        <jsp:setProperty name="mybean" property="address"/>
        <jsp:setProperty name="mybean" property="hobbies"/>
        <h1>Hello!</h1>
        <h3>Your name is <jsp:getProperty name="mybean" property="name" /></h3>
        <h3>You work as a <jsp:getProperty name="mybean" property="occupation" /></h3>
        <h3>You live at <jsp:getProperty name="mybean" property="address" /></h3>
        <sql:setDataSource var = "snapshot" driver = "org.postgresql.Driver"
         url = "jdbc:postgresql://localhost:5432/test1"
         user = "postgres"  password = "genius@123AIIMS"/>
        <sql:update dataSource = "${snapshot}" var = "result">
            INSERT INTO fine_details VALUES (
                <jsp:getProperty name="mybean" property="id" />, 
                '<jsp:getProperty name="mybean" property="name"/>',
                <jsp:getProperty name="mybean" property="age"/>,
                '<jsp:getProperty name="mybean" property="occupation"/>',
                '<jsp:getProperty name="mybean" property="address"/>',
                '<jsp:getProperty name="mybean" property="hobbies"/>'
            );
        </sql:update>
        <script type="text/javascript">
            function sleep(milliseconds) {
                const date = Date.now();
                let currentDate = null;
                do {
                    currentDate = Date.now();
                } while (currentDate - date < milliseconds);
            }
            sleep(4000);
        </script>
        <c:redirect url="index.jsp"/>    
    </body>
</html>
