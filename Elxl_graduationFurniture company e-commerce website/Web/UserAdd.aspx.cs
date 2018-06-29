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

public partial class UserAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox6.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '信息不能为空！'); </script> ");
        }
        else
        {
            string sSql = "insert into Users(name,notes,role,phone,address,users,pwd) values('" + TextBox1.Text + "','" + TextBox2.Text + "','用户','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')";
            SQL s1 = new SQL();
            bool result = s1.SqlResults(sSql);
            if (result == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '注册成功！'); </script> ");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加失败！'); </script> ");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
