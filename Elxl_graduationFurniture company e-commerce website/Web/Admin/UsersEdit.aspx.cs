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

public partial class Admin_UsersEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["role"] != null)
            {
                if (Session["role"].ToString() == "用户")
                {
                    //Label1.Visible = false;
                    //Label2.Visible = false;
                    //FileUpload1.Visible = false;
                    //Image1.Visible = false;

                }
            }
        
            bind();
        }
    }
    private void bind()
    {
        string sSql = "select * from Users where users='" + Session["users"].ToString() + "'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        DataView dv = ds.Tables[0].DefaultView;
        if (dv.Count > 0)
        {
            TextBox1.Text = dv[0].Row["name"].ToString();
            TextBox2.Text = dv[0].Row["notes"].ToString();
            TextBox3.Text = dv[0].Row["users"].ToString();
            TextBox4.Text = dv[0].Row["pwd"].ToString();
            TextBox5.Text = dv[0].Row["address"].ToString();
            TextBox6.Text = dv[0].Row["phone"].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["role"] != null)
        {
            string sSql;
            sSql = "update Users set address='" + TextBox5.Text + "',phone='" + TextBox6.Text + "', name='" + TextBox1.Text + "',notes='" + TextBox2.Text + "',pwd='" + TextBox4.Text + "' where users='" + TextBox3.Text + "'";
            SQL s = new SQL();
            bool result = s.SqlResults(sSql);
            if (result == true)
            {

                Response.Write("<script>alert('更新成功！');window.location='UsersEdit.aspx';</script>");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '更新失败！'); </script> ");
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string sSql;
            sSql = "select * from Users where users='" + TextBox3.Text + "'";
            SQL s = new SQL();
            ArrayList al = s.arrSearch(sSql);
            if (al.Count > 0)
            {
                Response.Write("<script>alert('登录名重复！');</script>");

            }
            else
            {
                insert();
            }
       
    }
    private void insert()
    {
        
        string sSql = "insert Users values(name,notes,users,pwd,role,address) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','用户','" + TextBox5.Text + "')";

        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加成功！'); </script> ");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加失败！'); </script> ");
        }
    }
}
