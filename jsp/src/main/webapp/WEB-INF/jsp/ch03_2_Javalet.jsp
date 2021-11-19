<!-- ch03_2_Javalet.jsp   -->
<%@page contentType="text/html"  pageEncoding="UTF-8"%>
<html>
  <head>  <title>JSP脚本段应用示例</title>  </head>  
  <body>
       <h3>直角三角形的形式显示数字</h3>
       <%
          for(int i=1;i<10;i++) {
             for(int j=1;j<=i;j++) {
                out.print(j+"  ");    //out是JSP的内置对象，在这里用于输出信息
             }
            out.println("<br/>");
         }
      %>
      <h3>根据随机产生的数据的不同，显示不同的问候</h3>
      <% if (Math.random()<0.5) { %>
             Have a <B>nice</B> day!
           <% }
        else { %>
             Have a <B>lousy</B> day!
        <%}%>
   </body>
 </html> 
