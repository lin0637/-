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
            sort();//绑定分类
            if (Request["id"] != null)
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = true;
                bind();
            }
        }
    }

    private void bind()
    {
        SQL s = new SQL();
        string sSql = "select  * from Goods where id=" + Request["id"].ToString();
        DataSet ds = s.DSSearch(sSql);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DropDownList1.Text = ds.Tables[0].Rows[0]["sort"].ToString();
            TextBox1.Text = ds.Tables[0].Rows[0]["title"].ToString();
            HiddenField1.Value = ds.Tables[0].Rows[0]["image"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["prices"].ToString();
            FCKeditor1.Value = ds.Tables[0].Rows[0]["contents"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["counts"].ToString();
          
        }
    }

    private void sort()
    {
        SQL s = new SQL();
        string sSql = "select * from Sort";
        DataSet ds = s.DSSearch(sSql);
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "sort";
        DropDownList1.DataValueField = "sort";
        DropDownList1.DataBind();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
         
    }
    
    protected void  Button1_Click(object sender, EventArgs e)
     {
         if (FileUpload1.HasFile)
         {
             String fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
             if (fileExt == ".jpg" || fileExt == ".jif" || fileExt == ".png")
             {
                 FileUpload1.SaveAs(Server.MapPath("..\\image\\goods") + "\\" + FileUpload1.FileName);
                 lj = FileUpload1.FileName;
             }
             else
             {
                 Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '请选择图片文件！'); </script> ");
             }
         }
         else
         {
             Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '没有选择要上传的图片！'); </script> ");
         }
     }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileExt == ".jpg" || fileExt == ".jif" || fileExt == ".png")
            {
                FileUpload1.SaveAs(Server.MapPath("..\\image\\goods") + "\\" + FileUpload1.FileName);
                string lj = FileUpload1.FileName;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '请选择图片文件！'); </script> ");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '没有选择要上传的图片！'); </script> ");
        }
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
            if (fileExt == ".jpg" || fileExt == ".jif" || fileExt == ".png")
            {
                FileUpload1.SaveAs(Server.MapPath("..\\image\\goods") + "\\" + FileUpload1.FileName);
                string lj = FileUpload1.FileName;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '请选择图片文件！'); </script> ");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '没有选择要上传的图片！'); </script> ");
        }
    }
    protected void Button2_Click2(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox3.Text = null;
        FCKeditor1.Value = null;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            try
            {
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("..\\image\\goods") + "\\" + FileUpload1.FileName);
                    lj = FileUpload1.FileName;
                }
                if (Session["users"] == null)
                    Session["users"] = "";
                string lrr = Session["users"].ToString();
                string sSql = "insert into Goods values('" + DropDownList1.Text + "','" + TextBox1.Text + "','" + lj + "','" + TextBox3.Text + "','" + FCKeditor1.Value + "','" + lrr + "','" + TextBox4.Text + "')";
                SQL s = new SQL();
                bool rt = s.SqlResults(sSql);
                if (rt)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加成功！'); </script> ");
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加失败！'); </script> ");
                }
            }

            catch (Exception ex)
            {

                Response.Write("<script>alert('发生错误:" + ex.Message.ToString() + "')</script>");

            }

        }

        else
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '没有选择要上传的图片！'); </script> ");

        }
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("..\\image\\goods") + "\\" + FileUpload1.FileName);
            HiddenField1.Value = FileUpload1.FileName;
        }
        string sSql = "update Goods set counts='"+TextBox4.Text+"',sort='" + DropDownList1.Text + "',title='" + TextBox1.Text + "',image='" + HiddenField1.Value + "',prices='" + TextBox3.Text + "',contents='" + FCKeditor1.Value + "' where id=" + Request["id"].ToString();
        SQL s = new SQL();
        bool rt = s.SqlResults(sSql);
        if (rt)
        {
            Response.Write("<script>alert('更新成功');window.location='GoodSearch.aspx';</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '更新失败！'); </script> ");
        }
    }
}
