<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>包裹信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有包裹信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  账号：<input name="zhanghao" type="text" id="zhanghao" style='border:solid 1px #000000; color:#666666' size="12" />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

<table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="00FFFF" style="border-collapse:collapse">  
  <tr>
    <td width="30" align="center" bgcolor="CCFFFF">序号</td>
    <td bgcolor='#CCFFFF'>账号</td>    <td bgcolor='#CCFFFF'>姓名</td>    <td bgcolor='#CCFFFF'>包裹单号</td>    <td bgcolor='#CCFFFF'>包裹名称</td>    <td bgcolor='#CCFFFF'>包裹位置</td>    <td bgcolor='#CCFFFF' width='90' align='center'>包裹图片</td>    <td bgcolor='#CCFFFF' width='65' align='center'>收包裹日期</td>    <td bgcolor='#CCFFFF'>保管人</td>    
    <td width="138" align="center" bgcolor="CCFFFF">添加时间</td>
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
  </tr>
 <% 
  	


  	 new CommDAO().delete(request,"baoguoxinxi"); 
    String url = "baoguoxinxi_list2.jsp?1=1"; 
    String sql =  "select * from baoguoxinxi where baoguanren='"+request.getSession().getAttribute("username")+"' ";
	if(request.getParameter("zhanghao")=="" ||request.getParameter("zhanghao")==null ){}else{sql=sql+" and zhanghao like '%"+request.getParameter("zhanghao")+"%'";}
    sql+=" order by id desc";
	ArrayList<HashMap> list = PageManager.getPages(url,15,sql, request); 
	int i=0;
	for(HashMap map:list){ 
	i++;
	
	


     %>
  <tr>
    <td width="30" align="center"><%=i %></td>
    <td><%=map.get("zhanghao") %></td> <td><%=map.get("xingming") %></td> <td><%=map.get("baoguodanhao") %></td> <td><%=map.get("baoguomingcheng") %></td> <td><%=map.get("baoguoweizhi") %></td> <td width='90'><a href='<%=map.get("baoguotupian") %>' target='_blank'><img src='<%=map.get("baoguotupian") %>' width=88 height=99 border=0 /></a></td> <td><%=map.get("shoubaoguoriqi") %></td> <td><%=map.get("baoguanren") %></td>  
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="baoguoxinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="baoguoxinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="baoguoxinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
  
${page.info }


  </body>
</html>

