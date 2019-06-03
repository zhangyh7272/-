<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>车位信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="cheweixinxi_add.jsp?id=<%=id%>&zhanghao="+document.form1.zhanghao.value;
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







new CommDAO().insert(request,response,"cheweixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="cheweixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加车位信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td>账号：</td><td><%=Info.getselectsl("zhanghao","yezhuxinxi","zhanghao")%>&nbsp;*<label id='clabelzhanghao' /></td></tr>		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' style='border:solid 1px #000000; color:#666666' >&nbsp;*<label id='clabelxingming' /></td></tr>		<tr><td  width="200">楼栋：</td><td><input name='loudong' type='text' id='loudong' style='border:solid 1px #000000; color:#666666' ></td></tr>		<tr><td  width="200">楼层：</td><td><input name='louceng' type='text' id='louceng' style='border:solid 1px #000000; color:#666666' ></td></tr>		<tr><td  width="200">车牌号：</td><td><input name='chepaihao' type='text' id='chepaihao' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">车位：</td><td><input name='chewei' type='text' id='chewei' value='' onblur='' style='border:solid 1px #000000; color:#666666' /></td></tr>		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>		
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="提交"  style='border:solid 1px #000000; color:#666666' />
      <input type="reset" name="Submit2" value="重置" style='border:solid 1px #000000; color:#666666' /></td>
    </tr>
  </table>
</form>

  </body>
</html>

<%
if(request.getParameter("zhanghao")==null || request.getParameter("zhanghao").equals("")){}else{

HashMap mmm = new CommDAO().getmaps("zhanghao",request.getParameter("zhanghao"),"yezhuxinxi"); 
%>
<script language="javascript">
document.form1.zhanghao.value="<%=mmm.get("zhanghao")%>";document.form1.xingming.value="<%=mmm.get("xingming")%>";document.form1.loudong.value="<%=mmm.get("loudong")%>";document.form1.louceng.value="<%=mmm.get("louceng")%>";//suilafuzhi

</script>
<%
}
%>


<script language=javascript src='js/ajax.js'></script>

<%@page import="java.util.ArrayList"%> 
<%@page import="java.util.HashMap"%> 

<script language=javascript >  
 
 function checkform(){  
 
	var zhanghaoobj = document.getElementById("zhanghao"); if(zhanghaoobj.value==""){document.getElementById("clabelzhanghao").innerHTML="&nbsp;&nbsp;<font color=red>请输入账号</font>";return false;}else{document.getElementById("clabelzhanghao").innerHTML="  "; } 	var xingmingobj = document.getElementById("xingming"); if(xingmingobj.value==""){document.getElementById("clabelxingming").innerHTML="&nbsp;&nbsp;<font color=red>请输入姓名</font>";return false;}else{document.getElementById("clabelxingming").innerHTML="  "; } 	


return true;   
}   
popheight=450;
</script>  


