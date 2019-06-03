<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>缴费信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"jiaofeixinxi");
     %>
  缴费信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%'>账号：</td><td width='39%'><%=m.get("zhanghao")%></td><td width='11%'>姓名：</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%'>水费：</td><td width='39%'><%=m.get("shuifei")%></td><td width='11%'>电费：</td><td width='39%'><%=m.get("dianfei")%></td></tr><tr><td width='11%'>总金额：</td><td width='39%'><%=m.get("zongjine")%></td><td width='11%'>缴费日期：</td><td width='39%'><%=m.get("jiaofeiriqi")%></td></tr><tr><td width='11%'>缴费人：</td><td width='39%'><%=m.get("jiaofeiren")%></td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td colspan=4 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


