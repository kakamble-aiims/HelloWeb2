<%-- 
    Document   : insert
    Created on : 9 Jun, 2020, 10:39:42 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:h="http://xmlns.jcp.org/jsf/html">
    <h:head>
        <title>Insert entry into table of details</title>
        <script type="text/javascript" src="javascript_ins.js"></script>
        <link rel="stylesheet" type="text/css" href="insert.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </h:head>
    <h:body>
        Welcome, fill in your details if you are visiting this web page for the
        first time.
        <p></p>
        <form name="fine_form_1" action="response.jsp" onSubmit="return validate_length()">
            Enter a numerical ID(required):
            <input type="number" name="id" value="" />
            <br></br>
            Enter your name:
            <input type="text" name="name" value="" />
            <br></br>
            Enter your age:
            <input type="number" name="age" value="" />
            <br></br>
            Enter your occupation:
            <input type="text" name="occupation" value="" />
            <br></br>
            Enter your address:
            <textarea name="address" value="">
            </textarea>
            <br></br>
            Enter your hobbies:
            <input type="text" name="hobbies" value="" />
            <br></br>
            <input type="submit" value="OK" class="sub"/>
        </form>
        <p><a href="index.jsp">Back</a></p>
    </h:body>
</html>
