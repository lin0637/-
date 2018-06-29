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

public partial class GoodsAdd : System.Web.UI.Page
{
    private static string lj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request["id"] != null)
            {
                bind();
            }
        }
    }

    private void bind()
    {
        string sSql = "select  * from Help where id=" + Request["id"].ToString();
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox1.Text = ds.Tables[0].Rows[0]["title"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["contents"].ToString();
           
        }
    }

   
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
        
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
         
    }
    
    protected void  Button1_Click(object sender, EventArgs e)
     {
         
         
     }


    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(TextBox1.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '标题不能为空！'); </script> ");
            return;
        }
            /////////////////插入语句
            string sSql = string.Empty;
            if (Request["id"] != null)
            {
                sSql = "update Help set title='" + TextBox1.Text + "',contents='" + TextBox5.Text + "' where id=" + Request["id"].ToString();
            }
            else
            {
                sSql = "insert into Help(title,contents,publish) values('" +TextBox1.Text + "','" + TextBox5.Text + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
            }
            SQL s = new SQL();
            bool result = s.SqlResults(sSql);
            if (result == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '保存成功！'); </script> ");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '保存失败！'); </script> ");
            }
       
    }
}
