<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>缴费信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"shoufeixinxi");
 String zhanghao="";  	String xingming="";  	String shuifei="";  	String dianfei="";  	String zongjine="";  	
 zhanghao=(String)mlbdq.get("zhanghao");  	xingming=(String)mlbdq.get("xingming");  	shuifei=(String)mlbdq.get("shuifei");  	dianfei=(String)mlbdq.get("dianfei");  	zongjine=(String)mlbdq.get("zongjine");  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="jiaofeixinxi_add.jsp?id=<%=id%>";
}
function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"；", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"；";
	}
}
</script>

 <% 
HashMap ext = new HashMap(); 
if(request.getParameter("f")!=null){




ext.put("iszf","否");


new CommDAO().insert(request,response,"jiaofeixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="jiaofeixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加缴费信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">账号：</td><td><input name='zhanghao' type='text' id='zhanghao' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zhanghao.value='<%=zhanghao%>';document.form1.zhanghao.setAttribute("readOnly",'true');</script>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>		<tr><td  width="200">水费：</td><td><input name='shuifei' type='text' id='shuifei' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shuifei.value='<%=shuifei%>';document.form1.shuifei.setAttribute("readOnly",'true');</script>		<tr><td  width="200">电费：</td><td><input name='dianfei' type='text' id='dianfei' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.dianfei.value='<%=dianfei%>';document.form1.dianfei.setAttribute("readOnly",'true');</script>		<tr><td  width="200">总金额：</td><td><input name='zongjine' type='text' id='zongjine' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.zongjine.value='<%=zongjine%>';document.form1.zongjine.setAttribute("readOnly",'true');</script>		<tr><td width="200">缴费日期：</td><td><input name='jiaofeiriqi' type='text' id='jiaofeiriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>		<tr><td  width="200">缴费人：</td><td><input name='jiaofeiren' type='text' id='jiaofeiren' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly" /></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>




<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	


return true;   
}   
popheight=450;
</script>  


