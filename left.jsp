<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="util.Info"%>
<%@page import="dao.CommDAO"%>
<%@page import="util.PageManager"%>
<html>
<head>
<title>left</title><script src="js/menu.js"></script>
<link rel="stylesheet" href="css.css">

<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
body,td,th {
	font-size: 12px;
}
.STYLE1 {color: #F33532}
body {
	background-color: #F7F7F7;
	background-image: url(images/left_02_01_02.gif);
}
.STYLE2 {color: #FFFFFF}
-->
</style></head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
	
	<tr>
		<td  background="images/left_02_01_02.gif"><table width="200"  border="0" cellpadding="0" cellspacing="0" background="images/left_02_01_02.gif" id="__01">
          <tr>
            <td><table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('1')" style="cursor:pointer;">
                <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>ϵͳ����Ա</strong></span></td>
                    <td width="30%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200"  style="display:none"  id="show1">
					<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
						 <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
						  <td ><a href="yhzhgl.jsp" target="mainFrame">����Ա����</a></td>
						</tr>
						<tr>
						 <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
						  <td ><a href="mod.jsp" target="mainFrame">�޸�����</a></td>
						</tr>
				  </table>
				 </td>
              </tr>
              
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('2')" style="cursor:pointer;">
                <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>ҵ����Ϣ����</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show2"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="loudongxinxi_add.jsp" target="mainFrame">¥����Ϣ���</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="loudongxinxi_list.jsp" target="mainFrame">¥����Ϣ��ѯ</a></td>
                    </tr>
					   <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="loucengxinxi_add.jsp" target="mainFrame">¥����Ϣ���</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="loucengxinxi_list.jsp" target="mainFrame">¥����Ϣ��ѯ</a></td>
                    </tr>
					   <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="yezhuxinxi_add.jsp" target="mainFrame">ҵ����Ϣ���</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="yezhuxinxi_list.jsp" target="mainFrame">ҵ����Ϣ��ѯ</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('3')" style="cursor:pointer;">
                <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>��λ��Ϣ����</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show3"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="cheweixinxi_add.jsp" target="mainFrame">��λ��Ϣ���</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="cheweixinxi_list.jsp" target="mainFrame">��λ��Ϣ��ѯ</a></td>
                    </tr>
                </table></td>
              </tr>
            
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('4')" style="cursor:pointer;">
                <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>�շ���Ϣ����</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show4"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="yezhuxinxi_list2.jsp" target="mainFrame">�շ���Ϣ���</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="shoufeixinxi_list.jsp" target="mainFrame">�շ���Ϣ��ѯ</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table></td>
          </tr>
          <tr>
            <td><table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
              <tr onClick="show('5')" style="cursor:pointer;">
                <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>֪ͨ��Ϣ����</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show5"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="tongzhixinxi_add.jsp" target="mainFrame">֪ͨ��Ϣ���</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="tongzhixinxi_list.jsp" target="mainFrame">֪ͨ��Ϣ��ѯ</a></td>
                    </tr>
                </table></td>
              </tr>
             
            </table>
			</td>
          </tr>
		  
          <tr>
            <td>
              <table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('6')" style="cursor:pointer;">
                  <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>������Ϣ����</strong></span></td>
                        <td width="30%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show6"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="baoxiuguanli_list.jsp" target="mainFrame">������Ϣ�鿴</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="baoxiuguanli_list.jsp" target="mainFrame">���޻ظ���ѯ</a></td>
                      </tr>
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
          <tr>
            <td>
              <table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('7')" style="cursor:pointer;">
                  <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>������Ϣ����</strong></span></td>
                        <td width="30%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="200" background="images/left_02_01_02.gif"   id="show7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="yezhuxinxi_list3.jsp" target="mainFrame">������Ϣ���</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="baoguoxinxi_list2.jsp" target="mainFrame">������Ϣ��ѯ</a></td>
                      </tr>
                     
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
          <tr>
            <td>
              <table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
                <tr >
                  <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>ϵͳ��Ȩ</strong></span></td>
                        <td width="30%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="200" background="images/left_02_01_02.gif"   id="submenu7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td colspan="2" align="center"><p><br>
                          </p>
                        <p></p>
                        <p></p></td>
                      </tr>
                      
                  </table></td>
                </tr>
              
              </table></td>
          </tr>
        </table></td>
	</tr>
	
</table>
</body>
</html>

