<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>

<%
response.setContentType("application/vnd.ms-excel");
response.addHeader("Content-Disposition", "attachment;filename=baoguoxinxi.xls");
%>
<html>
  <head>
    <title>������Ϣ</title>
  </head>

  <body >
  <p>���а�����Ϣ�б�</p>
  

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�˺�</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>��������</td>    <td bgcolor='#CCFFFF'>��������</td>    <td bgcolor='#CCFFFF'>����λ��</td>    <td bgcolor='#CCFFFF' width='90' align='center'>����ͼƬ</td>    <td bgcolor='#CCFFFF' width='95' align='center'>�հ�������</td>    <td bgcolor='#CCFFFF'>������</td>        
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    

  </tr>
  <% 

    String url = "baoguoxinxi_list.jsp?1=1"; 
    String sql =  "select * from baoguoxinxi where 1=1";
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;

     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhanghao") %></td>    <td><%=map.get("xingming") %></td>    <td><%=map.get("baoguodanhao") %></td>    <td><%=map.get("baoguomingcheng") %></td>    <td><%=map.get("baoguoweizhi") %></td>    <td width='90' align='center'><a href='<%=map.get("baoguotupian") %>' target='_blank'><img src='<%=map.get("baoguotupian") %>' width=88 height=99 border=0 /></a></td>    <td><%=map.get("shoubaoguoriqi") %></td>    <td><%=map.get("baoguanren") %></td>        
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

