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

public partial class Admin_GoodsDd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["role"].ToString() != "管理员")
            {
                bind();
            }
            else
            {
                AllBind();
            }
        }
    }
    private void bind()
    {
        string sSql = "select a.orderid,b.state from OrderDetail a left join [Order] b on a.orderid=b.orderid where a.users='"+Session["users"].ToString()+"' group by a.orderid,b.state";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    private void AllBind()
    {
        string sSql = "select a.orderid,b.state from OrderDetail a left join [Order] b on a.orderid=b.orderid  group by a.orderid,b.state";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)//加载表头背景
        {
            e.Row.Attributes.Add("style", "background-image:url('../image/log/bg.jpg')");
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[1].Text == "1")
            {
                e.Row.Cells[1].Text = "交易成功";
            }
            else
            {
                e.Row.Cells[1].Text = "未付款";
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        
    }
}
