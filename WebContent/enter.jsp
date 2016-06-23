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
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if(username.equals("root")&&password.equals("root")){
		Cookie myCook = new Cookie("mrCookie",username+"#"+password);
		myCook.setMaxAge(60*60*24);
		response.addCookie(myCook); 
%>
<script type="text/javascript" language="javascript">
	alert("用户可登录系统");
	window.location.href="index.jsp";
</script>
<%
	}else{
%>
<script type="text/javascript" language="javascript">
	alert("用户名或者密码错误");
	window.location.href="index.jsp";
</script>
<% 
	}
%>
</body>
</html>