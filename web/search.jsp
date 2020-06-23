<%-- 
    Document   : search
    Created on : 9 Jun, 2020, 10:59:23 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html">
    <h:head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="search.css">
        <script type="text/javascript" src="javascript_srch.js"></script>
        <title>Search record</title>
    </h:head>
    <h:body>
        <br>
            <p>
                <form name="search_rec">
                    <br>Enter your name to search your record:
                    <input type="text" name="name" value="" onkeyup="sendNameInfo()"/>
                </form>
            </p>
            <p>
                <br>
                <br>
            <table id="search_table" border = "1" width = "100%">
                <th>
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Age</td>
                        <td>Occupation</td>
                        <td>Address</td>
                        <td>Hobbies</td>
                    </tr>
                </th>
                <tbody>  
                </tbody>
            </table>
            </p>
        </br>
    </h:body>
    <p><a href="index.jsp">Back</a></p>
</html>