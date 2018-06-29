<%@ Page Language="C#" AutoEventWireup="true" CodeFile="left.aspx.cs" Inherits="left" %>


<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
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
        <dt onClick='showHide("items1_1")'><b>用户管理</b></dt>
        <dd style='display:block' class='sitem' id='items1_1'>
          <ul class='sitemu'>
            <li>
              <div class='items'>
                <div class='fllct'><a href='YhSearch.aspx' target='main'>用户管理</a></div>
              </div>
            </li>
          
          </ul>
        </dd>
      </dl>
      <!-- Item 1 End -->
      <!-- Item 2 Strat -->
      
       
      <dl class='bitem'>
        <dt onClick='showHide("items2_1")'><b>产品管理</b></dt>
        <dd style='display:block' class='sitem' id='Dd2'>
          <ul class='sitemu'>
            <li><a href='Type.aspx' target='main'>类别管理</a></li>
            <li><a href='GoodsAdd.aspx' target='main'>发布产品</a></li>
           <li><a href='GoodSearch.aspx' target='main'>产品维护</a></li>
          </ul>
        </dd>
      </dl>     
     
      
        <dl class='bitem'>
        <dt onClick='showHide("items2_1")'><b>订单管理</b></dt>
        <dd style='display:block' class='sitem' id='Dd4'>
          <ul class='sitemu'>
              <li><a href='MyOrder.aspx' target='main'>订单管理</a></li>
          </ul>
        </dd>
      </dl>
      
      <dl class='bitem'>
        <dt onClick='showHide("items2_1")'><b>通告管理</b></dt>
        <dd style='display:block' class='sitem' id='Dd3'>
          <ul class='sitemu'>
            <li><a href='Xw_add.aspx' target='main'>通告添加</a></li>
              <li><a href='Xw_edit.aspx' target='main'>通告维护</a></li>
          </ul>
        </dd>
      </dl>
      
       <dl class='bitem'>
        <dt onClick='showHide("items2_1")'><b>友情链接管理</b></dt>
        <dd style='display:block' class='sitem' id='Dd5'>
          <ul class='sitemu'>
            <li><a href='Lj_add.aspx' target='main'>友情链接添加</a></li>
              <li><a href='Lj_edit.aspx' target='main'>友情链接维护</a></li>
          </ul>
        </dd>
      </dl>

      <dl class='bitem'>
        <dt onClick='showHide("items2_1")'><b>帮助中心管理</b></dt>
        <dd style='display:block' class='sitem' id='Dd6'>
          <ul class='sitemu'>
            <li><a href='HelpAdd.aspx' target='main'>帮助中心添加</a></li>
              <li><a href='HelpSearch.aspx' target='main'>帮助中心维护</a></li>
          </ul>
        </dd>
      </dl>
	  
	  <dl class='bitem'>
        <dt onClick='showHide("items3_1")'><b>评价管理</b></dt>
        <dd style='display:block' class='sitem' id='items3_1'>
          <ul class='sitemu'>
            <li><a href='MyCol.aspx' target='main'>评价管理</a></li>
          </ul>
        </dd>
      </dl>
      
      <dl class='bitem'>
        <dt onClick='showHide("items5_1")'><b>留言管理</b></dt>
        <dd style='display:block' class='sitem' id='items5_1'>
          <ul class='sitemu'>
            <li><a href='MesMan.aspx' target='main'>留言管理</a></li>
          </ul>
        </dd>
      </dl>

	   <dl class='bitem'>
        <dt onClick='showHide("items2_1")'><b>销量管理</b></dt>
        <dd style='display:block' class='sitem' id='Dd1'>
          <ul class='sitemu'>
              <li><a href='XlSearch.aspx' target='main'>销量统计</a></li>
              <li><a href='Zzt.aspx' target='main'>销售报表</a></li>
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
