<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left1.aspx.cs" Inherits="left" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>�ޱ���ҳ</title>
    <link rel="stylesheet" href="skin/css/base.css" type="text/css" />
<link rel="stylesheet" href="skin/css/menu.css" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script language='javascript'>var curopenItem = '1';</script>
<script language="javascript" type="text/javascript" src="skin/js/frame/menu.js"></script>
<base target="main" />
</head>
<body target="main">
    <form id="form1" runat="server">
    <div>
    <table width='99%' height="100%" border='0' cellspacing='0' cellpadding='0'>
  <tr>
    <td style='padding-left:3px;padding-top:8px' valign="top">
	<!-- Item 1 Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items1_1")'><b>�û�</b></dt>
        <dd style='display:block' class='sitem' id='items1_1'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='UsersEdit.aspx' target='main'>�����˻�</a></div>
              </div>
            </li>
          
          </ul>
        </dd>
      </dl>
      <!-- Item 1 End -->
      <!-- Item 2 Strat -->
      <dl class='bitem'>
        <dt onClick='showHide("items3_1")'><b>����</b></dt>
        <dd style='display:block' class='sitem' id='Dd1'>
          <ul class='sitemu'>
            <li><a href='MyCar.aspx' target='main'>���ﳵ</a></li>
            <li><a href='MyOrder.aspx' target='main'>�ҵĶ���</a></li>
            
          </ul>
        </dd>
      </dl>
      
       
	  
	  <dl class='bitem'>
        <dt onClick='showHide("items3_1")'><b>����</b></dt>
        <dd style='display:block' class='sitem' id='items3_1'>
          <ul class='sitemu'>
            <li><a href='MyCol.aspx' target='main'>�ҵ�����</a></li>
          </ul>
        </dd>
      </dl>
      
       <dl class='bitem'>
        <dt onClick='showHide("items3_1")'><b>�ղع���</b></dt>
        <dd style='display:block' class='sitem' id='Dd2'>
          <ul class='sitemu'>
            <li><a href='MySc.aspx' target='main'>��Ʒ�ղ�</a></li>
       
          </ul>
        </dd>
      </dl>
	  
	  
      <!-- Item 2 End -->
	  </td>
  </tr>
</table>
    </div>
    </form>
</body>
</html>
