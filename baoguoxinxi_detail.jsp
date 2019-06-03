<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>包裹信息详细</title>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>

  <body >
  <%
	String id=request.getParameter("id");
	HashMap m = new CommDAO().getmap(id,"baoguoxinxi");
     %>
  包裹信息详细:
  <br><br>
  
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
   <tr>
     <td width='11%' height=44>账号：</td><td width='39%'><%=m.get("zhanghao")%></td><td  rowspan=7 align=center><a href=<%=m.get("baoguotupian")%> target=_blank><img src=<%=m.get("baoguotupian")%> width=228 height=215 border=0></a></td></tr><tr><td width='11%' height=44>姓名：</td><td width='39%'><%=m.get("xingming")%></td></tr><tr><td width='11%' height=44>包裹单号：</td><td width='39%'><%=m.get("baoguodanhao")%></td></tr><tr><td width='11%' height=44>包裹名称：</td><td width='39%'><%=m.get("baoguomingcheng")%></td></tr><tr><td width='11%' height=44>包裹位置：</td><td width='39%'><%=m.get("baoguoweizhi")%></td></tr><tr><td width='11%' height=44>收包裹日期：</td><td width='39%'><%=m.get("shoubaoguoriqi")%></td></tr><tr><td width='11%' height=44>保管人：</td><td width='39%'><%=m.get("baoguanren")%></td></tr><tr><td width='11%' height=100  >备注：</td><td width='39%' colspan=2 height=100 ><%=m.get("beizhu")%></td></tr><tr><td colspan=3 align=center><input type=button name=Submit5 value=返回 onClick="javascript:history.back()" />&nbsp;<input type=button name=Submit5 value=打印 onClick="javascript:window.print()" /></td></tr>
    
  </table>

  </body>
</html>


