<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>业主信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"yezhuxinxi");
     %>
  业主信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>账号：</td><td width='39%'><%=m.get("zhanghao")%></td><td  rowspan=9 align=center><a href=<%=m.get("zhaopian")%> target=_blank><img src=<%=m.get("zhaopian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>密码：</td><td width='39%'><%=m.get("mima")%></td></tr><tr><td width='11%' height=44>姓名：</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%' height=44>性别：</td><td width='39%'><%=m.get("xingbie")%></td></tr><tr><td width='11%' height=44>楼栋：</td><td width='39%'><%=m.get("loudong")%></td></tr><tr><td width='11%' height=44>楼层：</td><td width='39%'><%=m.get("louceng")%></td></tr><tr><td width='11%' height=44>手机：</td><td width='39%'><%=m.get("shouji")%></td></tr><tr><td width='11%' height=44>出生年月：</td><td width='39%'><%=m.get("chushengnianyue")%></td></tr><tr><td width='11%' height=44>身份证：</td><td width='39%'><%=m.get("shenfenzheng")%></td></tr><tr><td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 ><%=m.get("beizhu")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


