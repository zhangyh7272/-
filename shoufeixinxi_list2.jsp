<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>�շ���Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>�����շ���Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �˺ţ�<input name="zhanghao" type="text" id="zhanghao" style='border:solid 1px #000000; color:#666666' size="12" />  ������<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  �շ����ڣ�<input name="shoufeiriqi1" type="text" id="shoufeiriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="shoufeiriqi2" type="text" id="shoufeiriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

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
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	double zongjinez=0;


  	 new CommDAO().delete(request,"shoufeixinxi"); 
    String url = "shoufeixinxi_list2.jsp?1=1"; 
    String sql =  "select * from shoufeixinxi where zhanghao='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("zhanghao")=="" ||request.getParameter("zhanghao")==null ){}else{sql=sql+" and zhanghao like '%"+request.getParameter("zhanghao")+"%'";}
if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}
if (request.getParameter("shoufeiriqi1")==""  ||request.getParameter("shoufeiriqi1")==null ) {}else{sql=sql+" and shoufeiriqi >= '"+request.getParameter("shoufeiriqi1")+"'";}
if (request.getParameter("shoufeiriqi2")==""  ||request.getParameter("shoufeiriqi2")==null ) {}else {sql=sql+" and shoufeiriqi <= '"+request.getParameter("shoufeiriqi2")+"'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	zongjinez=zongjinez+Float.valueOf((String)map.get("zongjine")).floatValue();



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
 
 <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("��")){%><a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=shoufeixinxi"><font color='red'>֧��</font></a> <%}%> </td>
    
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shoufeixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="shoufeixinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="shoufeixinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
�����ܽ��:<%=zongjinez%>��  
${page.info }


  </body>
</html>

