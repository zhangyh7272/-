<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=yezhuxinxi.xls");
%>
<html>
  <head>
    <title>业主信息</title>
  </head>

  <body >
  <p>已有业主信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>账号</td>    <td bgcolor='#CCFFFF'>密码</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF' width='40' align='center'>性别</td>    <td bgcolor='#CCFFFF'>楼栋</td>    <td bgcolor='#CCFFFF'>楼层</td>    <td bgcolor='#CCFFFF'>手机</td>    <td bgcolor='#CCFFFF' width='65' align='center'>出生年月</td>    <td bgcolor='#CCFFFF'>身份证</td>    <td bgcolor='#CCFFFF' width='90' align='center'>照片</td>        
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "yezhuxinxi_list.jsp?1=1"; 
    String sql =  "select * from yezhuxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhanghao") %></td>    <td><%=map.get("mima") %></td>    <td><%=map.get("xingming") %></td>    <td align='center'><%=map.get("xingbie") %></td>    <td><%=map.get("loudong") %></td>    <td><%=map.get("louceng") %></td>    <td><%=map.get("shouji") %></td>    <td><%=map.get("chushengnianyue") %></td>    <td><%=map.get("shenfenzheng") %></td>    <td width='90' align='center'><a href='<%=map.get("zhaopian") %>' target='_blank'><img src='<%=map.get("zhaopian") %>' width=88 height=99 border=0 /></a></td>        
    <td width="138" align="center"><%=map.get("addtime") %></td>
  </tr>
  	<%
  }
   %>
</table>

<br>
以上数据共<%=i %>条
  </body>
</html>

