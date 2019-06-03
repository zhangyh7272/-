<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=shoufeixinxi.xls");
%>
<html>
  <head>
    <title>收费信息</title>
  </head>

  <body >
  <p>已有收费信息列表：</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>账号</td>
    <td bgcolor='#CCFFFF'>姓名</td>
    <td bgcolor='#CCFFFF'>楼栋</td>
    <td bgcolor='#CCFFFF'>楼层</td>
    <td bgcolor='#CCFFFF'>手机</td>
    <td bgcolor='#CCFFFF'>水费</td>
    <td bgcolor='#CCFFFF'>电费</td>
    <td bgcolor='#CCFFFF'>管理费</td>
    <td bgcolor='#CCFFFF'>其他</td>
    <td bgcolor='#CCFFFF'>总金额</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>收费日期</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>是否支付</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    

  </tr>
  <% 

    String url = "shoufeixinxi_list.jsp?1=1"; 
    String sql =  "select * from shoufeixinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhanghao") %></td>
    <td><%=map.get("xingming") %></td>
    <td><%=map.get("loudong") %></td>
    <td><%=map.get("louceng") %></td>
    <td><%=map.get("shouji") %></td>
    <td><%=map.get("shuifei") %></td>
    <td><%=map.get("dianfei") %></td>
    <td><%=map.get("guanlifei") %></td>
    <td><%=map.get("qita") %></td>
    <td><%=map.get("zongjine") %></td>
    <td><%=map.get("shoufeiriqi") %></td>
    
    <td align='center'><%=map.get("iszf")%></td>
    
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

