<%-- 
    Document   : index
    Created on : 9 Jun, 2020, 10:29:43 AM
    Author     : root
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html">
    <h:head>
        <title>JSP and JDBC</title>
        <script type="text/javascript" src="javascript.js"></script>
        <link rel="stylesheet" type="text/css" href="index.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </h:head>
    <h:body onload="init();">
        <sql:setDataSource var = "snapshot" driver = "org.postgresql.Driver"
         url = "jdbc:postgresql://localhost:5432/test1"
         user = "postgres"  password = "genius@123AIIMS"/>
        
        <sql:query dataSource = "${snapshot}" var = "result">
            SELECT * from fine_details;
        </sql:query>
      <p>
          <form name="choice" action="action_redirect.jsp">
            What do you want to do? : <br>
                <br><input type="radio" name="choose" value="Insert" class="ins"/>Insert</br>
                <br><input type="radio" name="choose" value="Update" class="upd"/>Update</br>
                <br><input type="radio" name="choose" value="Search" class="srch"/>Search</br>
                <br><input type="radio" name="choose" value="Delete" class="del"/>Delete</br>
            </br>
            <input type="submit" value="OK" name="submit" class="subcl" />
        </form>      
      </p>
      <table border = "1" width = "100%">
         <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Occupation</th>
            <th>Address</th>
            <th>Hobbies</th>
            
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.name}"/></td>
               <td><c:out value = "${row.age}"/></td>
               <td><c:out value = "${row.occupation}"/></td>
               <td><c:out value = "${row.address}"/></td>
               <td><c:out value = "${row.hobbies}"/></td>
            </tr>
         </c:forEach>
      </table>
    </h:body>
</html>
