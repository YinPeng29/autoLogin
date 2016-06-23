<%@page import="sun.security.util.Length"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String welcome = "第一次访问";
	String[] info = new String[]{"","",""};
	Cookie[] cookie = request.getCookies();
	if(cookie!=null){
		for(int i = 0;i<cookie.length;i++){
			if(cookie[i].getName().equals("mrCookie")){
				info = cookie[i].getValue().split("#");
				welcome = ",欢迎回来";
			}
		}
	}
%>
<%=info[0]+welcome%>
<form action="enter.jsp" method="post">
	用&nbsp;户&nbsp;名:
	<input name="username" type="text" value="<%=info[0] %>"><br>
	密&nbsp;&nbsp;&nbsp;码:
	<input type="password" name="password" value="<%=info[1]%>"><br>
	<input type="submit" value="提交">
</form>
</body>
</html>