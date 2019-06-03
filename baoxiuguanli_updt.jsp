<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>报修管理</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

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

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"baoxiuguanli",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"baoxiuguanli"); 

%>
  <form  action="baoxiuguanli_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改报修管理:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>标题：</td><td><input name='biaoti' type='text' id='biaoti' value='<%= mmm.get("biaoti")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>报修内容：</td><td><textarea name='baoxiuneirong' cols='50' rows='5' id='baoxiuneirong' style='border:solid 1px #000000; color:#666666'><%=mmm.get("baoxiuneirong")%></textarea></td></tr>     <tr style='display:none'><td>报修回复：</td><td><textarea name='baoxiuhuifu' cols='50' rows='5' id='baoxiuhuifu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("baoxiuhuifu")%></textarea></td></tr>     <tr><td>报修人：</td><td><input name='baoxiuren' type='text' id='baoxiuren' value='<%= mmm.get("baoxiuren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


