<%-- 
    Document   : delete
    Created on : 9 Jun, 2020, 11:42:23 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html">
    <h:head>
        <title>Delete an element</title>
        <script type="text/javascript" src="javascript_del.js"></script>
        <link rel="stylesheet" type="text/css" href="delete.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </h:head>
    <h:body>
        <br>
            <p>
                <form name="delete_rec" action="response_3.jsp" onSubmit="return validate_length()">
                    Enter your ID to delete your record:
                    <input type="number" name="id" value="" />
                    <input type="submit" value="Delete record" name="del_rec" />
                </form>
            </p>
        </br>
        <p><a href="index.jsp">Back</a></p>
    </h:body>
</html>

