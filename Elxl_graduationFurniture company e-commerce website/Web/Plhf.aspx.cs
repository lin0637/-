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

public partial class Forum_add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        txtContent.Text = "";
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Main.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtContent.Text))
        {
            Page.RegisterStartupScript("alert", "<script>alert('内容不能为空！');</script>");
            return;
        }
        string sSql = "insert into CommentReplay values('" + Request["id"].ToString() + "','" + txtContent.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','" + Session["users"].ToString() + "')";
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
            Response.Write("<script>alert('添加成功');window.location='Detail.aspx?id=" + Request["id"].ToString() + "';</script>");
        else
            Page.RegisterStartupScript("alert", "<script>alert('添加失败！');</script>");
    }
}
