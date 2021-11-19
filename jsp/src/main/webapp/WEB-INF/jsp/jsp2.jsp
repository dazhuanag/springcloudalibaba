<%@ page language="java" pageEncoding="UTF-8"%>
<html>
	<head>
		<title>My JSP 'jsp1.jsp' starting page</title>
	</head>
	<body>
		<%
			String username = (String) session.getAttribute("username");
			if (username == null) {
				Cookie[] cs = request.getCookies();
				String v = null;
				if (cs != null) {
					for (int i = 0; i < cs.length; i++) {
						if (cs[i].getName().equals("username")) {
							v = cs[i].getValue();
						}
					}
				}
				if (v != null) {
					session.setAttribute("username", v);
					out.println(v + ",您好");
				} else {
					out.print("您还没注册，2秒后转到注册页面");
					response.setHeader("Refresh", "2;url=jsp1.jsp");
				}
			} else {
				out.println(username + ",您好");
			}
		%>
	</body>
</html>
