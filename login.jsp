<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
<head>
<title>����������ҵ����ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--

body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-repeat: repeat-x;
	background-color: #3484D4;
}
.STYLE6 {color: #FFFFFF}
.STYLE5 {color: #CCFFCC;
	font-size: 26pt;
}
.STYLE3 {color: #0464CC; font-size:12px}
-->
</style>

</head>
<script type="text/javascript">
 <%
String error = (String)request.getAttribute("error"); 
if(error!=null)
{
 %>
 alert("�û������������");
 <%}%>
 
  <%
String random = (String)request.getAttribute("random"); 
if(random!=null)
{
 %>
 alert("��֤�����");
 <%}%>
 
 popheight = 39;

function check()
{
	if(document.form1.username.value=="" || document.form1.pwd.value=="" || document.form1.pagerandom.value=="")
	{
		alert('����������');
		return false;
	}
}

           function loadimage(){ 
document.getElementById("randImage").src = "image.jsp?"+Math.random(); 
} 

           
           </script>     
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="783" height="580" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login.gif" id="__01">
  <tr>
    <td height="293" colspan="3"><table width="64%" height="56" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td height="56"><div style="font-family:����; color:#FFFFFF;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 28px; margin-top:5pt">
            <div align="center" >����������ҵ����ϵͳ</div>
        </div></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td width="345" rowspan="2">&nbsp;</td>
    <td width="239" height="152"><form action="xiaoquwuye?ac=adminlogin&a=a" method="post" name="form1" style="display: inline"><table width="205" border="0" align="left" cellpadding="0" cellspacing="0">
              <tr>
                <td width="44" height="30"><span class="STYLE3">�û�:</span></td>
                <td height="30" colspan="2"><input name="username" type="text" id="username" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
              </tr>
              <tr>
                <td height="30"><span class="STYLE3">����:</span></td>
                <td height="30" colspan="2"><input name="pwd" type="password" id="pwd" style="width:100px; height:16px; border:solid 1px #000000; color:#666666"></td>
              </tr>
              <tr>
                <td height="30"><span class="STYLE3">Ȩ��:</span></td>
                <td height="30" colspan="2"><select name="cx" id="cx">
                    <option value="����Ա">����Ա</option>
					<option value="ҵ����Ϣ">ҵ��</option>
		<!--quxanxiaxndexnglxu-->
                  </select>
                </td>
              </tr>
              <tr>
                <td height="30"><span class="STYLE3">��֤��:</span></td>
                <td width="59" height="30"><input name="pagerandom" type="text" id="pagerandom" style=" height:20px; border:solid 1px #000000; color:#666666; width:50px" />
                <td width="102"><a href="javascript:loadimage();"><img alt="����������ң�" name="randImage" id="randImage" src="image.jsp" width="60" height="20" border="1" align="absmiddle"> </a></td>
              </tr>
              <tr>
                <td height="30" colspan="3"><input type="submit" name="Submit" value="��½" onClick="return check();" >
                    <input type="reset" name="Submit2" value="����"></td>
              </tr>
            </table>	</form>	</td>
    <td width="199" rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>





