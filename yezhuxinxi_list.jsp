<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>ҵ����Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����ҵ����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �˺ţ�<input name="zhanghao" type="text" id="zhanghao" style='border:solid 1px #000000; color:#666666' size="12" />  ������<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" /> �Ա�<select name='xingbie' id='xingbie' style='border:solid 1px #000000; color:#666666;'><option value="">����</option><option value="��">��</option><option value="Ů">Ů</option></select>  ¥����<%=Info.getselect("loudong","loudongxinxi","loudong"," 1=1 ")%>  ¥�㣺<%=Info.getselect("louceng","loucengxinxi","louceng"," 1=1 ")%>
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='yezhuxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�˺�</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF' width='40' align='center'>�Ա�</td>    <td bgcolor='#CCFFFF'>¥��</td>    <td bgcolor='#CCFFFF'>¥��</td>    <td bgcolor='#CCFFFF'>�ֻ�</td>    <td bgcolor='#CCFFFF' width='65' align='center'>��������</td>    <td bgcolor='#CCFFFF'>���֤</td>    <td bgcolor='#CCFFFF' width='90' align='center'>��Ƭ</td>        
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"yezhuxinxi"); 
    String url = "yezhuxinxi_list.jsp?1=1"; 
    String sql =  "select * from yezhuxinxi where 1=1";
	if(request.getParameter("zhanghao")=="" ||request.getParameter("zhanghao")==null ){}else{sql=sql+" and zhanghao like '%"+request.getParameter("zhanghao")+"%'";}if(request.getParameter("xingming")=="" ||request.getParameter("xingming")==null ){}else{sql=sql+" and xingming like '%"+request.getParameter("xingming")+"%'";}if(request.getParameter("xingbie")=="" ||request.getParameter("xingbie")==null ){}else{sql=sql+" and xingbie like '%"+request.getParameter("xingbie")+"%'";}if(request.getParameter("loudong")=="" ||request.getParameter("loudong")==null ){}else{sql=sql+" and loudong like '%"+request.getParameter("loudong")+"%'";}if(request.getParameter("louceng")=="" ||request.getParameter("louceng")==null ){}else{sql=sql+" and louceng like '%"+request.getParameter("louceng")+"%'";}
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
    <td width="60" align="center"><a href="yezhuxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="yezhuxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="yezhuxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

