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

public partial class Default2 : System.Web.UI.Page
{
    public double sum;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }

    
    private void bind()
    {
        string sSql = "select * from Goods where id=" + Request["id"].ToString();
        SQL s = new SQL();
        DataView dv = s.DSSearch(sSql).Tables[0].DefaultView;
        Image1.ImageUrl = "../image/goods/" + dv[0].Row["image"].ToString();
        HiddenField1.Value = dv[0].Row["image"].ToString();
        Label1.Text = dv[0].Row["sort"].ToString();
        Label2.Text = dv[0].Row["title"].ToString();
        Label4.Text = dv[0].Row["prices"].ToString();
        Label5.Text = dv[0].Row["contents"].ToString();
        Label6.Text = dv[0].Row["users"].ToString();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
       
    }
  
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mysc.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "   <script>window.print();</script> ");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)//加载表头背景
        {
            e.Row.Attributes.Add("style", "background-image:url('image/log/bg.jpg')");
        }
    }
    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
      
    }
    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.Header)//加载表头背景
        {
            e.Row.Attributes.Add("style", "background-image:url('../image/log/bg.jpg')");
        }

    }
}
