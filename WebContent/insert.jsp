<%@page import="java.util.List"%>
<%@page import="com.javaex.dao.EmaillistDao"%>
<%@page import="com.javaex.vo.EmailVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String lastName = request.getParameter("ln");
	String firstName = request.getParameter("fn");
	String email = request.getParameter("email");
	
	System.out.println(lastName);
	System.out.println(firstName);
	System.out.println(email);
	
	EmailVo vo = new EmailVo(lastName, firstName, email);
	EmaillistDao dao = new EmaillistDao(); //EmaillistDao는 지금 틀만 올려져 있음. 내려받아야함
	dao.insert(vo);
	
	response.sendRedirect("list.jsp");
	
	
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>