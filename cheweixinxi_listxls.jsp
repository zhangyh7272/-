<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=cheweixinxi.xls");
%>
<html>
  <head>
    <title>��λ��Ϣ</title>
  </head>

  <body >
  <p>���г�λ��Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�˺�</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>¥��</td>    <td bgcolor='#CCFFFF'>¥��</td>    <td bgcolor='#CCFFFF'>���ƺ�</td>    <td bgcolor='#CCFFFF'>��λ</td>        
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "cheweixinxi_list.jsp?1=1"; 
    String sql =  "select * from cheweixinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhanghao") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("loudong") %></td>    <td><%=map.get("louceng") %></td>    <td><%=map.get("chepaihao") %></td>    <td><%=map.get("chewei") %></td>        
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

