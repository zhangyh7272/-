<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    
    <title>收费信息</title>
	
	<LINK href="css.css" type=text/css rel=stylesheet>
    <script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	   
  </head>
<%
  String id="";
  id=request.getParameter("id");
 HashMap mlbdq = new CommDAO().getmap(id,"yezhuxinxi");
 String zhanghao="";
  	String xingming="";
  	String loudong="";
  	String louceng="";
  	String shouji="";
  	
 zhanghao=(String)mlbdq.get("zhanghao");
  	xingming=(String)mlbdq.get("xingming");
  	loudong=(String)mlbdq.get("loudong");
  	louceng=(String)mlbdq.get("louceng");
  	shouji=(String)mlbdq.get("shouji");
  	 
 
   %>
<script language="javascript">

function gow()
{
	document.location.href="shoufeixinxi_add.jsp?id=<%=id%>";
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


double zongjineh=0;zongjineh=Float.valueOf(request.getParameter("shuifei")).floatValue()+Float.valueOf(request.getParameter("dianfei")).floatValue()+Float.valueOf(request.getParameter("guanlifei")).floatValue()+Float.valueOf(request.getParameter("qita")).floatValue();

ext.put("iszf","否");

ext.put("zongjine",zongjineh);
new CommDAO().insert(request,response,"shoufeixinxi",ext,true,false,""); 

}

%>

  <body >
 <form  action="shoufeixinxi_add.jsp?f=f&id=<%=id%>"  method="post" name="form1"  onsubmit="return checkform();">
  添加收费信息:
  <br><br>
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">
		<tr><td  width="200">账号：</td><td><input name='zhanghao' type='text' id='zhanghao' onblur='' style='border:solid 1px #000000; color:#666666' value='<%=request.getSession().getAttribute("username")%>' readonly="readonly"  readonly='readonly' /></td></tr><script language="javascript">document.form1.zhanghao.value='<%=zhanghao%>';document.form1.zhanghao.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">姓名：</td><td><input name='xingming' type='text' id='xingming' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.xingming.value='<%=xingming%>';document.form1.xingming.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">楼栋：</td><td><input name='loudong' type='text' id='loudong' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.loudong.value='<%=loudong%>';document.form1.loudong.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">楼层：</td><td><input name='louceng' type='text' id='louceng' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.louceng.value='<%=louceng%>';document.form1.louceng.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">手机：</td><td><input name='shouji' type='text' id='shouji' value='' onblur='' style='border:solid 1px #000000; color:#666666'  readonly='readonly' /></td></tr><script language="javascript">document.form1.shouji.value='<%=shouji%>';document.form1.shouji.setAttribute("readOnly",'true');</script>
		<tr><td  width="200">水费：</td><td><input name='shuifei' type='text' id='shuifei' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelshuifei' />必需数字型</td></tr>
		<tr><td  width="200">电费：</td><td><input name='dianfei' type='text' id='dianfei' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabeldianfei' />必需数字型</td></tr>
		<tr><td  width="200">管理费：</td><td><input name='guanlifei' type='text' id='guanlifei' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelguanlifei' />必需数字型</td></tr>
		<tr><td  width="200">其他：</td><td><input name='qita' type='text' id='qita' value='' onblur='checkform()' style='border:solid 1px #000000; color:#666666' />&nbsp;<label id='clabelqita' />必需数字型</td></tr>
		<tr><td  width="200">总金额：</td><td> 此项不必填写，系统自动计算</td></tr>
		<tr><td width="200">收费日期：</td><td><input name='shoufeiriqi' type='text' id='shoufeiriqi' value='' onblur='' readonly='readonly' onClick="WdatePicker({'dateFmt':'yyyy-MM-dd'})" style='width:100px; height:16px; border:solid 1px #000000; color:#666666'/></td></tr>
		<tr><td  width="200">备注：</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' onblur='' style='border:solid 1px #000000; color:#666666' ></textarea></td></tr>
		
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
 
	var shuifeiobj = document.getElementById("shuifei"); if(shuifeiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(shuifeiobj.value)){document.getElementById("clabelshuifei").innerHTML=""; }else{document.getElementById("clabelshuifei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var dianfeiobj = document.getElementById("dianfei"); if(dianfeiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(dianfeiobj.value)){document.getElementById("clabeldianfei").innerHTML=""; }else{document.getElementById("clabeldianfei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var guanlifeiobj = document.getElementById("guanlifei"); if(guanlifeiobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(guanlifeiobj.value)){document.getElementById("clabelguanlifei").innerHTML=""; }else{document.getElementById("clabelguanlifei").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    var qitaobj = document.getElementById("qita"); if(qitaobj.value!=""){ if(/^[0-9]+.?[0-9]*$/.test(qitaobj.value)){document.getElementById("clabelqita").innerHTML=""; }else{document.getElementById("clabelqita").innerHTML="&nbsp;&nbsp;<font color=red>必需数字型</font>"; return false;}}  
    


return true;   
}   
popheight=450;
</script>  


