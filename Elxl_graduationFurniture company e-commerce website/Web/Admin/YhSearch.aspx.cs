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
           
        }
    }
    private void bind()
    {
       

    }
    private void allbind()
    {
        string sSql = "select * from Users where 1=1 and role<>'管理员'";
        if (!string.IsNullOrEmpty(TextBox1.Text))
        {
            sSql += " and name like '%" + TextBox1.Text + "%'";
        }
        if (!string.IsNullOrEmpty(TextBox2.Text))
        {
            sSql += " and phone like '%" + TextBox2.Text + "%'";
        }
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
        string id = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        string sSql = "delete Users where id=" + id;
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
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
        //string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        //Response.Redirect("ZjAdd.aspx?id=" + id);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        allbind();
    }
}
