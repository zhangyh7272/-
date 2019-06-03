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
                    <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>个人资料管理</strong></span></td>
                    <td width="30%">&nbsp;</td>
                  </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200"  style="display:none"  id="show1">
					<table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
						<tr>
						 <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
						  <td ><a href="yezhuxinxi_updt2.jsp" target="mainFrame">个人资料修改</a></td>
						</tr>
						<tr>
						 <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
						  <td ><a href="mod2.jsp" target="mainFrame">修改密码</a></td>
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
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>费用信息管理</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show2"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="shoufeixinxi_list2.jsp" target="mainFrame">我的费用信息</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="shoufeixinxi_list2.jsp" target="mainFrame">我的缴费查询</a></td>
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
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>投诉信息管理</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show3"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="baoxiuguanli_add.jsp" target="mainFrame">投诉信息添加</a></td>
                    </tr>
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="baoxiuguanli_list2.jsp" target="mainFrame">投诉回复查询</a></td>
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
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>通知信息管理</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show4"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">

                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="tongzhixinxi_list3.jsp" target="mainFrame">通知信息查询</a></td>
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
                      <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>车位信息管理</strong></span></td>
                      <td width="30%">&nbsp;</td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show5"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                      <td ><a href="cheweixinxi_list2.jsp" target="mainFrame">我的车位查询</a></td>
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
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>包裹信息管理</strong></span></td>
                        <td width="30%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="200" background="images/left_02_01_02.gif"  style="display:none"  id="show6"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="baoguoxinxi_list3.jsp" target="mainFrame">我的包裹查询</a></td>
                      </tr>
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>
         <!-- <tr>
            <td>
              <table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
                <tr onClick="show('7')" style="cursor:pointer;">
                  <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>系统管理</strong></span></td>
                        <td width="30%">&nbsp;</td>
                      </tr>
                  </table></td>
                </tr>
                <tr>
                  <td width="200" background="images/left_02_01_02.gif"   id="show7"><table width="91%" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="databack.jsp" target="mainFrame">数据备份</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="youqinglianjie_add.jsp" target="mainFrame">友情连接添加</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="youqinglianjie_list.jsp" target="mainFrame">友情连接查询</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="liuyanban_list.jsp" target="mainFrame">留言管理</a></td>
                      </tr>
                      <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="dx.jsp?lb=系统简介" target="mainFrame">系统简介设置</a></td>
                      </tr>
					  <tr>
                        <td width="36" height="22" align="center"><img src="images/left_02_01.gif"></td>
                        <td ><a href="dx.jsp?lb=系统公告" target="mainFrame">系统公告设置</a></td>
                      </tr>
                     
                  </table></td>
                </tr>
               
              </table>
			  </td>
          </tr>-->
          <tr>
            <td>
              <table id="__01" width="200" border="0" cellpadding="0" cellspacing="0">
                <tr >
                  <td width="200" height="33" background="images/left_02_01_01.gif"><table width="100%" height="26" border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td width="70%" height="26" align="center" valign="bottom"><span class="SystemLeft STYLE2"><strong>系统版权</strong></span></td>
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

