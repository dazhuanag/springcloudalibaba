<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
   <head><title>接受参数页面</title> </head>
   <body>
       <% 
         String str1=request.getParameter("rdName" );
         String str2=request.getParameter("phName" );
       %>
       <font face="楷体" size=4 color=blue> 
            您输入的信息为：<br> 
            姓名：<%=str1%> <br>
            电话：<%=str2%><br> 
       </font>
   </body>
</html>
