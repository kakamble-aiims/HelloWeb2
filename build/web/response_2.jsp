<%-- 
    Document   : response_2
    Created on : 9 Jun, 2020, 11:33:10 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
<%@ page import="java.lang.*,java.io.*,java.util.*,java.sql.*" %>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<jsp:useBean id="upbean" scope="session" class="org.newpackage.hello.DetailsHandler" />
<jsp:setProperty name="upbean" property="id"/>
<jsp:setProperty name="upbean" property="name"/>
<% String choice = request.getParameter("up_choose");%>
<sql:setDataSource var = "snapshot" driver = "org.postgresql.Driver"
         url = "jdbc:postgresql://localhost:5432/test1"
         user = "postgres"  password = "genius@123AIIMS"/>
<sql:update dataSource = "${snapshot}" var = "result">
    UPDATE fine_details SET <%=choice%> = '<jsp:getProperty name="upbean" property="name" />' WHERE id = <jsp:getProperty name="upbean" property="id" />;
</sql:update>
<c:redirect url="index.jsp" />
