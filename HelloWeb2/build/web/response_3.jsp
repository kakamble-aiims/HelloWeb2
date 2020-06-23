<%-- 
    Document   : response_3
    Created on : 9 Jun, 2020, 11:44:28 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete my record</title>
    </head>
    <body>
        <jsp:useBean id="del_rec" scope="session" class="org.newpackage.hello.DetailsHandler" />
        <jsp:setProperty name="del_rec" property="id" />
        <sql:setDataSource var = "snapshot" driver = "org.postgresql.Driver"
         url = "jdbc:postgresql://localhost:5432/test1"
         user = "postgres"  password = "genius@123AIIMS"/>
        <sql:update dataSource = "${snapshot}" var = "count">
            DELETE FROM fine_details WHERE id = <jsp:getProperty name="del_rec" property="id" />;
        </sql:update>
        <h1>Hey! I deleted the record containing the id you wrote</h1>
        <br>
        <h2>........maybe, want to check using the table? Wait for 4 seconds</h2>
        <p>
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

