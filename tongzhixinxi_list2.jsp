<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>֪ͨ��Ϣ</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>����֪ͨ��Ϣ�б���</p>
  <form name="form1" id="form1" method="post" action="">
   ����:  ���⣺<input name="biaoti" type="text" id="biaoti" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="����" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">���</td>
    <td bgcolor='#CCFFFF'>����</td>
    <td bgcolor='#CCFFFF'>֪ͨ��</td>
    
    <td width="138" align="center" bgcolor="CCFFFF">����ʱ��</td>
    <td width="60" align="center" bgcolor="CCFFFF">����</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"tongzhixinxi"); 
    String url = "tongzhixinxi_list2.jsp?1=1"; 
    String sql =  "select * from tongzhixinxi where tongzhiren='"+request.getSession().getAttribute("username")+"' ";
	
if(request.getParameter("biaoti")=="" ||request.getParameter("biaoti")==null ){}else{sql=sql+" and biaoti like '%"+request.getParameter("biaoti")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("biaoti") %></td>
 
 <td><%=map.get("tongzhiren") %></td>
 
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="tongzhixinxi_updt.jsp?id=<%=map.get("id")%>">�޸�</a>  <a href="tongzhixinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('���Ҫɾ����')">ɾ��</a> <a href="tongzhixinxi_detail.jsp?id=<%=map.get("id")%>">��ϸ</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
${page.info }


  </body>
</html>
