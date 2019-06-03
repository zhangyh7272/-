<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>收费信息</title>
	<LINK href="css.css" type=text/css rel=stylesheet>
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
  </head>


  <body >
  <p>已有收费信息列表：</p>
  <form name="form1" id="form1" method="post" action="">
   搜索:  账号：<input name="zhanghao" type="text" id="zhanghao" style='border:solid 1px #000000; color:#666666' size="12" />  姓名：<input name="xingming" type="text" id="xingming" style='border:solid 1px #000000; color:#666666' size="12" />  收费日期：<input name="shoufeiriqi1" type="text" id="shoufeiriqi1"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />-<input name="shoufeiriqi2" type="text" id="shoufeiriqi2"  value='' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:80px; height:20px; border:solid 1px #000000; color:#666666' />
     <input type="submit" name="Submit" value="查找" style='border:solid 1px #000000; color:#666666' />
</form>

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
    <td width="60" align="center" bgcolor="CCFFFF">操作</td>
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
 
 <td align='center'><%=map.get("iszf")%>  <% if(map.get("iszf").equals("否")){%><a href="zhifu/index.jsp?id=<%=map.get("id")%>&biao=shoufeixinxi"><font color='red'>支付</font></a> <%}%> </td>
    
    <td width="138" align="center"><%=map.get("addtime") %></td>
    <td width="60" align="center"><a href="shoufeixinxi_updt.jsp?id=<%=map.get("id")%>">修改</a>  <a href="shoufeixinxi_list2.jsp?scid=<%=map.get("id") %>" onClick="return confirm('真的要删除？')">删除</a> <a href="shoufeixinxi_detail.jsp?id=<%=map.get("id")%>">详细</a> </td>
  </tr>
  	<%
  }
   %>
</table><br>
共计总金额:<%=zongjinez%>；  
${page.info }


  </body>
</html>

