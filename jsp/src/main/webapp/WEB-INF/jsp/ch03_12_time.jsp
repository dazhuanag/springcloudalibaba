<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<html>
     <head>
         <title>自动刷新</title>
     </head>
      <body>
         当前时间是：<%=new Date().toLocaleString()%><br>
         <hr>
        <%response.setHeader("refresh","1");%> 
    </body>

</html>
