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

public partial class Jdcg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            bind();
        }

    }

    private void bind()
    {
        string sSql = "select * from Notice order by dates desc";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();


    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)//加载表头背景
        {
            e.Row.Attributes.Add("style", "background-image:url('image/log/bg.jpg')");
        }
    }

    private void goods()
    {

       

    }
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
        string sSql = "select * from Notice where title like '%" + TextBox3.Text + "%' order by dates desc";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
    }
}
