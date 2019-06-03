<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>收费信息</title>
	
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

new CommDAO().update(request,response,"shoufeixinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"shoufeixinxi"); 

%>
  <form  action="shoufeixinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  修改收费信息:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
     
     <tr><td>账号：</td><td><input name='zhanghao' type='text' id='zhanghao' value='<%= mmm.get("zhanghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>姓名：</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>楼栋：</td><td><input name='loudong' type='text' id='loudong' value='<%= mmm.get("loudong")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>楼层：</td><td><input name='louceng' type='text' id='louceng' value='<%= mmm.get("louceng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>手机：</td><td><input name='shouji' type='text' id='shouji' value='<%= mmm.get("shouji")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>水费：</td><td><input name='shuifei' type='text' id='shuifei' value='<%= mmm.get("shuifei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>电费：</td><td><input name='dianfei' type='text' id='dianfei' value='<%= mmm.get("dianfei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>管理费：</td><td><input name='guanlifei' type='text' id='guanlifei' value='<%= mmm.get("guanlifei")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>其他：</td><td><input name='qita' type='text' id='qita' value='<%= mmm.get("qita")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>总金额：</td><td><input name='zongjine' type='text' id='zongjine' value='<%= mmm.get("zongjine")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>
     <tr><td>收费日期：</td><td><input name='shoufeiriqi' type='text' id='shoufeiriqi' value='<%= mmm.get("shoufeiriqi")%>' onclick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" readonly='readonly'  /></td></tr>
     <tr><td>备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="重置" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


