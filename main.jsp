<%@ page language="java"  pageEncoding="gb2312"%>


<head>
<meta http-equiv="Content-Type" content="text/html;charset=gb2312" />
<title>汇融名城物业管理系统</title>
<link rel="stylesheet" type="text/css" href="images/style.css" />
<SCRIPT language=JavaScript>
var status = 1;
function switchSysBar()
{
    if (1 == window.status){
		  window.status = 0;
      //switchPoint.innerText=4
	  switchPoint.innerHTML = '<img src="images/butOpen.gif">';
      document.all("frameTitle").style.display="none"
   }
   else
   {
    window.status = 1;
      //switchPoint.innerText=3
	  switchPoint.innerHTML = '<img src="images/butClose.gif">';
      document.all("frameTitle").style.display=""
   }
}
</SCRIPT>
<style type="text/css">
<!--
.STYLE2 {color: #ffffff}
-->
</style>
</head>
<body>
<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" style="background:#3691ED;">
	<tbody>
		<tr>
			<td height="126" colspan="3" >
			
			
			<IFRAME 
      style="Z-INDEX:2; VISIBILITY:inherit; WIDTH:100%; HEIGHT:100%" 
      name="topFrame" id="topFrame"  marginWidth="0" marginHeight="0"
      src="top.jsp" frameBorder="0" noResize scrolling="no">
	</IFRAME>
			</td>
		</tr>
		
		<tr>
			<td width="217" align="middle" valign="top" id="frameTitle" ><IFRAME 
      style="Z-INDEX:2; VISIBILITY:inherit; WIDTH:217; HEIGHT:100%" 
      name="leftFrame" id="leftFrame"  marginWidth="0" marginHeight="0"
      src="mygo.jsp" frameBorder="0" noResize scrolling="yes">
	</IFRAME></td>
			<td width="137" valign="middle" style="width:8px; cursor:pointer"  onClick="switchSysBar()" id="switchPoint" ><img id="barImg"  src="images/butClose.gif"  /></td>
			<td width="947" valign="top" style="width:100%; background:#FFFFFF"><iframe frameborder="0" id="mainFrame" name="mainFrame" scrolling="yes" src="sy.jsp" style="height:100%;visibility:inherit; width:100%;z-index:1;"></iframe></td>
		</tr>
		<tr>
			<td height="28" colspan="3" bgcolor="#EBF5FC" style="padding:0px 10px; font-size:12px;color:#2C89AD;background:url(images/down.gif) repeat-x;">
			  <span class="STYLE2">汇融名城物业管理系统 当前日期：<%java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);%></span> </td>
		</tr>
	</tbody>
</table>
</body>
</html>
