<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
  <head>
    <title>������Ϣ</title>
	
	<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js" charset="gb2312"></script>
	<script type="text/javascript" src="js/popup.js"></script>
    <LINK href="css.css" type=text/css rel=stylesheet>

  </head>
<script language="javascript">

function hsgxia2shxurxu(nstr,nwbk)
{
	if (eval("form1."+nwbk).value.indexOf(nstr)>=0)
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value.replace(nstr+"��", "");
	}
	else
	{
		eval("form1."+nwbk).value=eval("form1."+nwbk).value+nstr+"��";
	}
}
</script>

  <body >
   <% 

String id = request.getParameter("id"); 

HashMap ext = new HashMap(); 

new CommDAO().update(request,response,"baoguoxinxi",ext,true,false,""); 
HashMap mmm = new CommDAO().getmap(id,"baoguoxinxi"); 

%>
  <form  action="baoguoxinxi_updt.jsp?f=f&id=<%=mmm.get("id")%>"  method="post" name="form1"  onsubmit="return checkform();">
  �޸İ�����Ϣ:
  <br><br>
 
   <table width="100%" border="1" align="center" cellpadding="3" cellspacing="1" bordercolor="#00FFFF" style="border-collapse:collapse">  
          <tr><td>�˺ţ�</td><td><input name='zhanghao' type='text' id='zhanghao' value='<%= mmm.get("zhanghao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>������</td><td><input name='xingming' type='text' id='xingming' value='<%= mmm.get("xingming")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�������ţ�</td><td><input name='baoguodanhao' type='text' id='baoguodanhao' value='<%= mmm.get("baoguodanhao")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�������ƣ�</td><td><input name='baoguomingcheng' type='text' id='baoguomingcheng' value='<%= mmm.get("baoguomingcheng")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>����λ�ã�</td><td><input name='baoguoweizhi' type='text' id='baoguoweizhi' value='<%= mmm.get("baoguoweizhi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>����ͼƬ��</td><td><input name='baoguotupian' type='text' id='baoguotupian' size='50' value='<%= mmm.get("baoguotupian")%>' style='border:solid 1px #000000; color:#666666' />&nbsp;<input type='button' value='�ϴ�' onClick="up('baoguotupian')" style='border:solid 1px #000000; color:#666666'/></td></tr>     <tr><td>�հ������ڣ�</td><td><input name='shoubaoguoriqi' type='text' id='shoubaoguoriqi' value='<%= mmm.get("shoubaoguoriqi")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>�����ˣ�</td><td><input name='baoguanren' type='text' id='baoguanren' value='<%= mmm.get("baoguanren")%>' style='border:solid 1px #000000; color:#666666' /></td></tr>     <tr><td>��ע��</td><td><textarea name='beizhu' cols='50' rows='5' id='beizhu' style='border:solid 1px #000000; color:#666666'><%=mmm.get("beizhu")%></textarea></td></tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="Submit" value="�ύ" onClick="return checkform();" />
      <input type="reset" name="Submit2" value="����" /></td>
    </tr>
  </table>
</form>

  </body>
</html>


