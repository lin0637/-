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
           bind();
        }
    }

  

    private void bind()
    {
        string sSql = string.Empty;
        sSql = "select * from Help where id=" + Request["id"].ToString();
        SQL s = new SQL();
        DataView dv = s.DSSearch(sSql).Tables[0].DefaultView;
        Label1.Text = dv[0].Row["publish"].ToString();
        Label2.Text = dv[0].Row["title"].ToString();
        Label5.Text = dv[0].Row["contents"].ToString();    
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
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
    }
}
