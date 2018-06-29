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

public partial class Content : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //if (Session["users"] == null)
            //{
            //    Response.Write("<script>alert('请先登录！');window.location='Default.aspx';</script>");
            //    return;
            //}
                bind();
            

        }
    }
    private void bind()
    {
        string sSql = string.Empty;
        sSql = "select * from Notice where id=" + Request["id"].ToString();
        SQL s = new SQL();
        DataView dv = s.DSSearch(sSql).Tables[0].DefaultView;
        Label1.Text = dv[0].Row["dates"].ToString();
        Label2.Text = dv[0].Row["title"].ToString();
        Label5.Text = dv[0].Row["contents"].ToString();    
        Label6.Text = dv[0].Row["users"].ToString();    
    }
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (Session["users"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("Main.aspx");
        }
    }
}
