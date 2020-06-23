<%-- 
    Document   : action_redirect
    Created on : 9 Jun, 2020, 10:38:13 AM
    Author     : root
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" %>
<%@ page import="java.lang.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<%
    String choice = request.getParameter("choose");
    if(choice.equals("Insert"))
    {
%>
        <c:redirect url="insert.jsp"/>
<%
    }
    else if(choice.equals("Update"))
    {
%>
        <c:redirect url="update.jsp"/>
<%
    }
    else if(choice.equals("Delete"))
    {
%>
        <c:redirect url="delete.jsp"/>
<%  
    }
    else if(choice.equals("Search"))
    {
%>
        <c:redirect url="search.jsp"/>
<%  } %>
