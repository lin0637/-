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

public partial class Admin_gg_edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // 在此处放置用户代码以初始化页面
        if (!Page.IsPostBack)
        {
            if (Session["role"].ToString() == "管理员")
            {
                initGrid();
            }
            else
            {
                myGrid();
            }
        }
    }

    protected void initGrid()
    {
        DataTable dt = new DataTable();
        SQL s = new SQL();
        string sSql = "select * from Notice where 1=1";
        if (!string.IsNullOrEmpty(TextBox1.Text))
        {
            sSql += " and title like '%" + TextBox1.Text + "%'";
        }
        sSql += " order by dates desc";
        dt = s.DSSearch(sSql).Tables[0];
        if (dt.Rows.Count < 1)
            dt.Rows.Add(dt.NewRow());
        this.GridView1.DataSource = dt.DefaultView;
        this.GridView1.DataBind();
    }

    protected void myGrid()
    {
        DataTable dt = new DataTable();
        SQL s = new SQL();
        dt = s.DSSearch("select * from Notice where users='" + Session["users"].ToString() + "' order by dates desc ").Tables[0];
        if (dt.Rows.Count < 1)
            dt.Rows.Add(dt.NewRow());
        this.GridView1.DataSource = dt.DefaultView;
        this.GridView1.DataBind();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        if (Session["role"].ToString() == "管理员")
        {
            initGrid();
        }
        else
        {
            myGrid();
        }
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Del")
        {
         
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string Key = GridView1.DataKeys[e.RowIndex].Value.ToString();
        SQL s = new SQL();
        s.SqlResults("delete from Notice where id=" + Key + "");
        if (Session["role"].ToString() == "管理员")
        {
            initGrid();
        }
        else
        {
            myGrid();
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)
        {
            e.Row.Attributes.Add("style", "background-image:url('../image/log/bg.jpg')");
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[1].Text.Length > 30)
            {
                e.Row.Cells[1].Text = e.Row.Cells[1].Text.Substring(0, 30) + "...";
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string Key = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        Response.Redirect("Xw_add.aspx?id=" + Key);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}
