<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>���а�����Ϣ�б�</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  �˺ţ�<input name="zhanghao" type="text" id="zhanghao" style='border:solid 1px #000000; color:#666666' size="12" />
   <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' /> <input type="button" name="Submit2" value="����EXCEL" style='border:solid 1px #000000; color:#666666' onClick="javascript:location.href='baoguoxinxi_listxls.jsp';" />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>�˺�</td>    <td bgcolor='#CCFFFF'>����</td>    <td bgcolor='#CCFFFF'>��������</td>    <td bgcolor='#CCFFFF'>��������</td>    <td bgcolor='#CCFFFF'>����λ��</td>    <td bgcolor='#CCFFFF' width='90' align='center'>����ͼƬ</td>    <td bgcolor='#CCFFFF' width='95' align='center'>�հ�������</td>    <td bgcolor='#CCFFFF'>������</td>        
	
    <td width="138" align="center" bgcolor="CCFFFF">���ʱ��</td>
    
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
  <% 
  	


  	 new CommDAO().delete(request,"baoguoxinxi"); 
    String url = "baoguoxinxi_list.jsp?1=1"; 
    String sql =  "select * from baoguoxinxi where 1=1";
	if(request.getParameter("zhanghao")=="" ||request.getParameter("zhanghao")==null ){}else{sql=sql+" and zhanghao like '%"+request.getParameter("zhanghao")+"%'";}
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
    <td width="60" align="center"><a href="baoguoxinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="baoguoxinxi_list.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="baoguoxinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table>
<br>
  
${page.info }


  </body>
</html>

