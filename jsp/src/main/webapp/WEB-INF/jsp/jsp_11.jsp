<%@ page pageEncoding="gbk"%>
<html>
<head>
<title>java代码和html代码的嵌套</title>
</head>
<body>
<table border="1">
<tr><th>序号</th><th>数学</th><th>语文</th><th>英语</th></tr>
<%
for(int i=1;i<=10;i++){
  int math=(int)Math.round(Math.random()*100);
  int chinese=(int)Math.round(Math.random()*100);
  int english=(int)Math.round(Math.random()*100);
%>
  <tr><td><%=i%></td><td><%=math%></td><td><%=chinese%></td><td><%=english%></td></tr>
<%
}
%>
</table>
<hr/>
<table border="1">
<tr><th>n</th><th>1</th><th>2</th><th>3</th>
<th>4</th><th>5</th><th>6</th>
<th>7</th><th>8</th><th>9</th>
</tr>
<%
for(int i=1;i<=9;i++){
 out.print("<tr><th>"+i+"</th>");
 for(int j=1;j<=9;j++){
   out.print("<td>"+i*j+"</td>");
 }
 out.print("</tr>");
}
%>
</table>
<hr/>
<select>
<%
for(int i=1900;i<=2000;i++){
 out.print("<option>"+i+"</option>");
}
 %>
</select>年
<select>
<%
for(int i=1;i<=12;i++){
 out.print("<option>"+i+"</option>");
}
 %>
</select>月
<select>
<%
for(int i=1;i<=31;i++){
 out.print("<option>"+i+"</option>");
}
 %>
</select>日
</body>
</html>
