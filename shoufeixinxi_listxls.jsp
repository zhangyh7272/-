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
    <title>�շ���Ϣ</title>
  </head>

  <body >
  <p>�����շ���Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�˺�</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>¥��</td>
    <td bgcolor='#CCFFFF'>¥��</td>
    <td bgcolor='#CCFFFF'>�ֻ�</td>
    <td bgcolor='#CCFFFF'>ˮ��</td>
    <td bgcolor='#CCFFFF'>���</td>
    <td bgcolor='#CCFFFF'>�����</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>�ܽ��</td>
    <td bgcolor='#CCFFFF' width='65' align='center'>�շ�����</td>
    
    <td bgcolor='#CCFFFF' width='80' align='center'>�Ƿ�֧��</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

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
�������ݹ�<%=i %>��
  </body>
</html>

