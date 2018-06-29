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
        Response.Redirect("MyScZs.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["users"] == null)
        {
            Response.Write("<script>alert('尚未登录,请登录！');window.location='Default.aspx';</script>");
        }
        else
        {
            //判断是否已经收藏
            string select = "select * from Collection where title='" + Label2.Text + "'";
            SQL sss = new SQL();
            DataSet ds1 = sss.DSSearch(select);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '已收藏过该帮助中心！'); </script> ");
                return;
            }
            string buyusers = Session["users"].ToString();
            string sSql1 = "insert into Collection values('帮助中心','" + Label2.Text + "','" + Label5.Text + "','','" + buyusers + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')";
            SQL s1 = new SQL();
            bool result = s1.SqlResults(sSql1);
            if (result)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '收藏成功！'); </script> ");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '收藏失败！'); </script> ");
            }
        }
    }
}
