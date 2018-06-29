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
            sort();
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

    
   
    private void sort()
    {
        string sSql = "select * from sort";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
    private void bind()
    {
        string sSql = "select * from Goods where id=" + Request["id"].ToString();
        SQL s = new SQL();
        DataView dv = s.DSSearch(sSql).Tables[0].DefaultView;
        Image1.ImageUrl = "image/goods/" + dv[0].Row["image"].ToString();
        HiddenField1.Value = dv[0].Row["image"].ToString();
        Label1.Text = dv[0].Row["sort"].ToString();
        Label2.Text = dv[0].Row["title"].ToString();
        Label4.Text = dv[0].Row["prices"].ToString();
        Label5.Text = dv[0].Row["contents"].ToString();
        Label6.Text = dv[0].Row["users"].ToString();
        Label11.Text = dv[0].Row["counts"].ToString();

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
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
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '已收藏过该产品！'); </script> ");
                return;
            }
            string buyusers = Session["users"].ToString();
            string sSql1 = "insert into Collection values('" + Label1.Text + "','" + Label2.Text + "','" + HiddenField1.Value + "','" + buyusers + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "')";
            SQL s1 = new SQL();
            bool result = s1.SqlResults(sSql1);
            if (result == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '收藏成功！'); </script> ");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '收藏失败！'); </script> ");
            }
        }
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
        if (Session["users"] == null)
        {
            Response.Write("<script>alert('尚未登录,请登录！');window.location='Default.aspx';</script>");
            return;
        }
        if (string.IsNullOrEmpty(TextBox2.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '数量不能为空！'); </script> ");
            return;
        }
        int ssl = 0;
        if (!int.TryParse(TextBox2.Text, out ssl))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '请输入数字！'); </script> ");
            return;
        }
        if (double.Parse(TextBox2.Text) > double.Parse(Label11.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '数量不能超过库存！'); </script> ");
            return;
        }
        string buyusers = Session["users"].ToString();

        string select1 = "select * from OrderDetail where users='" + buyusers + "' and bookid='" + Request["id"].ToString() + "' and state='0'";
        SQL s11 = new SQL();
        DataSet ds1 = s11.DSSearch(select1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '不能添加相同产品！'); </script> ");
            return;
        }
        double prices = double.Parse(TextBox2.Text) * double.Parse(Label4.Text);
        string sSql = "insert into OrderDetail values('','" + Request["id"].ToString() + "','" + Label2.Text + "','" + Label4.Text + "','" + TextBox2.Text + "','" + prices + "','" + buyusers + "','" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") + "','0','"+Label6.Text+"')";
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {
            string update = "update Goods set counts=counts-" + TextBox2.Text + " where id=" + Request["id"].ToString();
            SQL u1 = new SQL();
            u1.SqlResults(update);
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加成功！'); </script> ");
            double cz = double.Parse(Label11.Text) - double.Parse(TextBox2.Text);
            Label11.Text = cz.ToString();
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加失败！'); </script> ");
        }
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
