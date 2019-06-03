<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>报修管理详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"baoxiuguanli");
     %>
  报修管理详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>标题：</td><td width='39%'><%=m.get("biaoti")%></td><td width='11%'>报修内容：</td><td width='39%'><%=m.get("baoxiuneirong")%></td></tr><tr><td width='11%'>报修回复：</td><td width='39%'><%=m.get("baoxiuhuifu")%></td><td width='11%'>报修人：</td><td width='39%'><%=m.get("baoxiuren")%></td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


