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
    public static string plid = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            plid = Request["id"].ToString();
            bind();
         
            pl();
            qx();
   
        }
    }

   


    private void qx()
    {
        if (Session["users"] == null)
        {
            TextBox1.Enabled = false;
            Button1.Enabled = false;
            return;
        }
        //判断是否收货
        string sSql = "select top 1 * from OrderDetail where bookid=" + Request["id"].ToString() + " and users='" + Session["users"].ToString() + "' and state='4' order by id desc";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox1.Enabled = true;
            Button1.Enabled = true;
        }
        else
        {
            TextBox1.Enabled = false;
            Button1.Enabled = false;
        }

    }

    private void pl()
    {
        
        //titleID = Request["id"].ToString();
        string sSql = "select * from Comment where titleid='"+Request["id"].ToString()+"'  order by fbsj desc";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        DataList2.DataSource = ds;//将pds内容最终绑定给DataList1，呈现到界面中
        DataList2.DataBind();

    }

    
   
   
    private void bind()
    {
        string sSql = "select * from Goods where id=" + Request["id"].ToString();
        SQL s = new SQL();
        DataView dv = s.DSSearch(sSql).Tables[0].DefaultView;
        Image1.ImageUrl = "../image/goods/" + dv[0].Row["image"].ToString();
        //HiddenField1.Value = dv[0].Row["image"].ToString();
        //Label1.Text = dv[0].Row["sort"].ToString();
        //Label2.Text = dv[0].Row["title"].ToString();
        //Label4.Text = dv[0].Row["prices"].ToString();
        //Label5.Text = dv[0].Row["contents"].ToString();
        //Label6.Text = dv[0].Row["users"].ToString();
        //Label3.Text = dv[0].Row["make"].ToString();
        //Label7.Text = dv[0].Row["vipPrice"].ToString();
        //Label8.Text = dv[0].Row["isbn"].ToString();
        //Label9.Text = dv[0].Row["publisher"].ToString();
        //Label10.Text = dv[0].Row["pubDate"].ToString();
        //Label11.Text = dv[0].Row["counts"].ToString();

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
        if (Session["users"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            Response.Redirect("Main.aspx");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
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
        if (Session["users"] == null)
        {
            Response.Write("<script>alert('尚未登录,请登录！');window.location='Default.aspx';</script>");
        }
        if (string.IsNullOrEmpty(TextBox1.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '评价内容不能为空！'); </script> ");
        }
        string sSql = "insert into Comment values('" +  TextBox1.Text + "','" + Session["users"].ToString() + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','" + Request["id"].ToString()+"','"+DropDownList1.Text+"','"+DropDownList2.Text+ "')";
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '评价成功！'); </script> ");
            TextBox1.Text = "";
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '评价失败！'); </script> ");
        }
        pl();
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
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandArgument.ToString() == "id")
        {
            if (Session["users"] == null)
            {
                Response.Write("<script>alert('请先登录');window.location='Default.aspx';</script>");
                return;
            }
            string id = e.CommandName;
            string sSql = "delete from Comment where id=" + id;
            SQL s = new SQL();
            bool result = s.SqlResults(sSql);
            if (result == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除成功！'); </script> ");
                pl();

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除失败！'); </script> ");
            }

        }
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
        {
            DataList dataList = (DataList)e.Item.FindControl("DataList2");
            DataRowView drv = (DataRowView)e.Item.DataItem;
            int mainID = Convert.ToInt32(drv["id"]);
            if (mainID > 0)
            {
                string sSql = "select * from CommentReplay where mesID=" + Request["id"].ToString() + " order by id desc";
                SQL s = new SQL();
                DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
                if (ds != null)
                {
                    try
                    {
                        dataList.DataSource = ds;
                        dataList.DataBind();
                    }
                    catch (Exception ex)
                    {
                        throw new Exception(ex.Message);
                    }
                }
            }
        }  
    }
}
