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

public partial class Admin_GoodSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["role"].ToString() == "管理员")
            {
                allbind();
            }
            else
            bind();
        }
    }
    private void bind()
    {
        DataSet ds = new DataSet();
        string sSql = "select * from Goods where users='" + Session["users"] + "' and title like '%" + TextBox2.Text + "%'";
        SQL s = new SQL();
        ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
    }
    private void allbind()
    {
        DataSet ds = new DataSet();
        string sSql = "select * from Goods where title like '%" + TextBox2.Text + "%'";
        SQL s = new SQL();
        ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
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
            //if (e.Row.Cells[4].Text.Length > 10)
            //{
            //    e.Row.Cells[4].Text = e.Row.Cells[4].Text.Substring(0, 10) + "...";
            //}
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string id = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        SQL s = new SQL();
        string sSql = "delete from Goods where id=" + id;
        bool rt = s.SqlResults(sSql);
        if (rt)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '已删除！'); </script> ");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除失败！'); </script> ");
        }
        if (Session["role"].ToString() == "管理员")
        {
            allbind();
        }
        else
            bind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        Response.Redirect("GoodsAdd.aspx?id=" + id);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["role"].ToString() == "管理员")
        {
            allbind();
        }
        else
            bind();
    }
}
