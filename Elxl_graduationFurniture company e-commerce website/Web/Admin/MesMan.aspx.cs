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
            allbind();
        }
    }
    
    private void allbind()
    {
        DataSet ds = new DataSet();
        string sSql = "select * from tb_Message where fbbt like '%" + TextBox1.Text + "%'";
        SQL s = new SQL();
        ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();

    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        allbind();
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
        string sSql = "delete from tb_Message where id=" + id;
        SQL s = new SQL();
        bool rt = s.SqlResults(sSql);
        if (rt)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除成功！'); </script> ");

        }
        allbind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
    }
protected void  Button1_Click(object sender, EventArgs e)
{
    allbind();
}
}
