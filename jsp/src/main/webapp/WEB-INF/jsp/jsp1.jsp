<%@ page language="java" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>My JSP 'jsp1.jsp' starting page</title>
	</head>
	<body>
		<form method="post">
			用户名：
			<input type="text" size="10" name="n">
			<input type="submit" value="确定">
		</form>
		<%
			String s = request.getParameter("n");
			if (s != null) {
				Cookie c = new Cookie("username", s);
				c.setMaxAge(24 * 3600);
				response.addCookie(c);
				session.setAttribute("username", s);
				response.sendRedirect("jsp2.jsp");
			}
		%>
	</body>
</html>
