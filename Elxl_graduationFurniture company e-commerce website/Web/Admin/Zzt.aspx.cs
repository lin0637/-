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

public partial class gg_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
           
        }
    }

    protected void initGrid()
    {
        

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
       
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        initGrid();
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "销售情况")
        {
            string sSql = "select bookname,count(*) as xl from OrderDetail where dates>='"+TextBox1.Text+"' and dates<='"+TextBox2.Text+"' group by bookname";
            SQL s = new SQL();
            DataSet ds = s.DSSearch(sSql);
            Chart1.DataSource = ds;
            Chart1.Titles[0].Text = "销售情况";
            Chart1.Series["Series 1"].XValueMember = "bookname";
            Chart1.Series["Series 1"].YValueMembers = "xl";
            Chart1.Series[0].IsValueShownAsLabel = true;
            Chart1.DataBind();
        }
        if (DropDownList1.Text == "剩余产品")
        {
            string sSql = "select title,counts from Goods ";
            SQL s = new SQL();
            DataSet ds = s.DSSearch(sSql);
            Chart1.DataSource = ds;
            Chart1.Titles[0].Text = "剩余产品";
            Chart1.Series["Series 1"].XValueMember = "title";
            Chart1.Series["Series 1"].YValueMembers = "counts";
            Chart1.Series[0].IsValueShownAsLabel = true;
            Chart1.DataBind();
        }
        if (DropDownList1.Text == "销售额")
        {
            string sSql = "select bookname,sum(cast(sums as float)) as xl from OrderDetail where dates>='" + TextBox1.Text + "' and dates<='" + TextBox2.Text + "' group by bookname";
            SQL s = new SQL();
            DataSet ds = s.DSSearch(sSql);
            Chart1.DataSource = ds;
            Chart1.Titles[0].Text = "销售额(单位：元)";
            Chart1.Series["Series 1"].XValueMember = "bookname";
            Chart1.Series["Series 1"].YValueMembers = "xl";
            Chart1.Series[0].IsValueShownAsLabel = true;
            Chart1.DataBind();
        }
    }
}
