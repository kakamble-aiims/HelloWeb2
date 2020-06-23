<%-- 
    Document   : update
    Created on : 9 Jun, 2020, 11:30:38 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="update.css">
        <script type="text/javascript" src="javascript_upd.js"></script>
        <title>Update Element</title>
    </head>
    <body>
        <form name="update_1" action="response_2.jsp" onSubmit="return validate_length()">
            Enter ID of record you want to update(required):
            <input type="number" name="id" value="" />
            <br></br>
            What do you want to update? : <br>
                <br><input type="radio" name="up_choose" value="name" />Name</br>
                <br><input type="radio" name="up_choose" value="occupation" />Occupation</br>
                <br><input type="radio" name="up_choose" value="address" />Address</br>
                <br><input type="radio" name="up_choose" value="hobbies" />Hobbies</br>
            </br>
            Enter new value:
            <input type="text" name="name" value="" />
            <br></br>
            <input type="submit" value="OK" class="sub"/>
        </form>
        <p><a href="index.jsp">Back</a></p>
    </body>
</html>
