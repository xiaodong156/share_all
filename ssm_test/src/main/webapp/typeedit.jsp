<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="model.Type"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <c:if test="${info==null}">
			<form action="insertt.action" method="post">
    </c:if>
    <c:if test="${info!=null}">
            <form action="updatet.action" method="post">
            <input type="hidden" name="id" value="${info.id}"></input>
            
    </c:if>
    <input  name="name" value="${info.name}"></input>
    
    <input type="submit" value="提交"></input>
</form>
</body>
</html>