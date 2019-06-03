<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<%
if((String)request.getSession().getAttribute("username")==null || (String)request.getSession().getAttribute("username")=="")
{
	out.print("<script>javascript:alert('对不起，您已超时或未登陆,请在IE中重新打开登陆！');window.close();</script>");
	out.close();
}
%>
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}

.STYLE7 {color: #FFFFFF}
-->
</style>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<table id="__01" width="100%" height="126" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td><table id="__01" width="100%" height="100" border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td width="6%" height="100" background="images/1-1_01_01_01.gif">&nbsp;</td>
                <td width="61%" background="images/afff.gif"><table width="77%" height="64" border="0" align="center">
                    <tr>
                      <td valign="bottom"><div style="font-family:宋体; color:#FFFFFF;  WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 28px; margin-top:5pt">汇融名城物业管理系统</div></td>
                    </tr>
                </table></td>
                <td width="514" align="right" background="images/afff.gif"><img src="images/1-1_01_01_02.gif" width="514" height="100" alt=""></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td width="100%" height="26" background="images/1-1_01_02.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="77%"><TABLE width="77%" 
border=0 align="center" cellPadding=0 cellSpacing=0>
                  <TBODY>
                    <TR>
                      <TD width="3%" height="31" align=center vAlign=center class="h2">&nbsp;</TD>
                      <TD width="97%" align=right ><marquee behavior=alternate width=100% scrollAmount=3 class="STYLE7">
                        汇融名城欢迎您！！！
                      </MARQUEE></TD>
                    </TR>
                  </TBODY>
                </TABLE></td>
                <td width="23%" align="right" class="STYLE7" style="padding-right:15px;">当前用户：<%=request.getSession().getAttribute("username")%> 权限：<%=request.getSession().getAttribute("cx")%> <a href="logout.jsp" target="_parent"><font class="STYLE7">退出</font></a></td>
              </tr>
            </table></td>
          </tr>
</table>
</body>
