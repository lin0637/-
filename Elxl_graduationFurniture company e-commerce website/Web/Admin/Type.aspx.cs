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

public partial class Admin_Type : System.Web.UI.Page
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
        string sSql = "select * from Sort where 1=1";
        if (!string.IsNullOrEmpty(TextBox2.Text))
        {
            sSql += " and sort like '%" + TextBox2.Text + "%'";
        }
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);

        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        GridView1.ShowFooter = true; //显示表脚--前台设置 <FooterTemplate><asp:TextBox....> </FooterTemplate>
        bind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;//当前行设置为编辑状态
        bind();
       

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //删除行操作
        string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
        string sSql = "delete Sort where id=" + id;
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
        bind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        ///点击‘更新’后，更新数据库记录
        string sSql = String.Format("update Sort set sort='{0}' where id={1}",
            ((TextBox)(GridView1.Rows[e.RowIndex].Cells[0].Controls[1])).Text,
         GridView1.DataKeys[e.RowIndex].Value.ToString());
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '更新成功！'); </script> ");
            GridView1.EditIndex = -1;
            bind();
        }
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;//取消编辑
        bind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (Session["users"] == null)
            Session["users"] = "";
        if (e.CommandName == "Add")//如果点击新增行的保存则增加记录
        {
            int i = 1;
            string sSql = String.Format("insert into Sort values('{0}','{1}')",
            ((TextBox)(GridView1.FooterRow.FindControl("t8"))).Text,//获取表脚控件的内容
 Session["users"].ToString());
            SQL s = new SQL();
            bool result = s.SqlResults(sSql);
            if (result == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '插入成功！'); </script> ");
                GridView1.ShowFooter = false;
                GridView1.EditIndex = -1;
                bind();
            }
        }
        if (e.CommandName == "cancel")//如果点击新增行的取消则取消表脚
        {
            GridView1.ShowFooter = false;
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)//加载表头背景
        {
            e.Row.Attributes.Add("style", "background-image:url('../image/log/bg.jpg')");
        }
       
    }
    protected void GridView1_PreRender(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count == 0)
        {
            DataTable dt = new DataTable();
            DataRow dr = dt.NewRow();
            dt.Columns.Add(new DataColumn("sort"));
            dt.Columns.Add(new DataColumn("id"));

            dr[0] = "";
           

            dt.Rows.Add(dr);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            GridView1.Rows[0].Visible = false;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        bind();
    }
}
