using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblUserName.Text = Convert.ToString(Session["Users"]);
            Label2.Text = DateTime.Now.Year.ToString() + "年" + DateTime.Now.Month.ToString("00") + "月" + DateTime.Now.Day.ToString("00") + "日";
            Label3.Text = Session["Role"].ToString();
            Label1.Text = Page.Title;

            ///////////////
            if (Session["Role"].ToString() == "管理员")
            {
                TreeNode tn = new TreeNode("后台管理");

                TreeView1.Nodes.Add(tn);
                ////////////////////////////////////////////////   
                tn = new TreeNode("用户管理");
                tn.NavigateUrl = "YhSearch.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);

                tn = new TreeNode("产品分类维护");
                tn.NavigateUrl = "Type.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                /////////////////////////////////
                tn = new TreeNode("发布产品");
                tn.NavigateUrl = "GoodsAdd.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                ////////////////////////////////
                tn = new TreeNode("产品维护");
                tn.NavigateUrl = "GoodSearch.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);

                tn = new TreeNode("产品分类维护");
                tn.NavigateUrl = "ScType.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                /////////////////////////////////
                tn = new TreeNode("发布产品");
                tn.NavigateUrl = "ProductAdd.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                ////////////////////////////////
                tn = new TreeNode("产品维护");
                tn.NavigateUrl = "ProductSearch.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);

                tn = new TreeNode("通告添加");
                tn.NavigateUrl = "Xw_add.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                ////////////////////////////////
                tn = new TreeNode("通告管理");
                tn.NavigateUrl = "Xw_edit.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);



                tn = new TreeNode("评价管理");
                tn.NavigateUrl = "MyCol.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                ////////////////////////////////
                tn = new TreeNode("订单管理");
                tn.NavigateUrl = "OrderSearch.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
              
                tn = new TreeNode("返回前台");
                tn.NavigateUrl = "../Main.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                
            }
           
            if (Session["Role"].ToString() == "用户")
            {
                TreeNode tn = new TreeNode("后台管理");

                TreeView1.Nodes.Add(tn);
                ////////////////////////////////////////////////
                tn = new TreeNode("帐户管理");
                tn.NavigateUrl = "UsersEdit.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                /////////////////////////////////

                tn = new TreeNode("购物车");
                tn.NavigateUrl = "MyCar.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                /////////////////////////////////
                tn = new TreeNode("订单管理");
                tn.NavigateUrl = "MyOrder.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
               
                ////////////////////////////////
                tn = new TreeNode("我的评价");
                tn.NavigateUrl = "MyCol.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);

                ////////////////////////////////
                tn = new TreeNode("我的收藏");
                tn.NavigateUrl = "MySc.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
                ////////////////////////////////


                tn = new TreeNode("返回前台");
                tn.NavigateUrl = "../Main.aspx";
                TreeView1.Nodes[0].ChildNodes.Add(tn);
               
            }
          
        }
    }
    protected void lnkbtnLoginOut_Click(object sender, EventArgs e)
    {

        Response.Redirect("../Default.aspx");
    }
}
