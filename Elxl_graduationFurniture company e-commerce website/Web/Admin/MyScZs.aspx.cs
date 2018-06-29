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

public partial class MyCar : System.Web.UI.Page
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
        string sSql = "select a.title,a.buydate,b.id from Collection a left join Help b on a.title=b.title where a.users='" + Session["users"].ToString() + "' and a.sort='帮助中心'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();


    }
    private void allbind()
    {
        string sSql = "select a.*,b.buydate from goods a left join Collection b  on a.sort=b.sort and a.title=b.title ";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
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

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string date = GridView1.Rows[e.NewEditIndex].Cells[2].Text;
        string sSql = "delete Collection  where buydate='" + date + "'";
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除成功！'); </script> ");
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
        {
            bind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        Response.Redirect("Detail.aspx?id=" + id);
    }
}
