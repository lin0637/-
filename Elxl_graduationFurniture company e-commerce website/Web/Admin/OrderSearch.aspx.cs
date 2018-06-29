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

public partial class Admin_GoodSearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request["orderid"] != null)
            {
                //查看订单
                GridView1.Columns[5].Visible = false;
                
                OrderDetail();
                Label1.Text = Request["orderid"].ToString();
                if (Request["state"] != null && Request["state"].ToString() == "1")
                {
                    GridView1.Columns[4].Visible = false;
                    Button1.Visible = true;
                }
                else
                {
                    GridView1.Columns[4].Visible = false;
                    Button1.Visible = false;
                }
                if (Request["state"] != null && Request["state"].ToString() == "2" && (Session["role"].ToString()=="管理员"||Session["role"].ToString()=="卖家"))
                {
                    t1.Visible = true;
                }
                else
                {
                    t1.Visible = false;
                }
                if (Request["state"] != null && (Request["state"].ToString() == "3"||Request["state"].ToString() == "4"||Request["state"].ToString() == "5"||Request["state"].ToString() == "6") )
                {
                    t1.Visible = true;
                    TextBox1.Enabled = false;
                    TextBox7.Enabled = false;
                    Button2.Visible = false;
                    GridView1.Columns[5].Visible = true;
                }

                if (Request["state"] != null && Request["state"].ToString() == "5" && (Session["role"].ToString() == "管理员" || Session["role"].ToString() == "卖家"))
                {
                    t2.Visible = true;
                }

                if (Request["state"] != null && Request["state"].ToString() == "6")
                {
                    t2.Visible = true;
                    TextBox8.Enabled = false;
                    TextBox9.Enabled = false;
                    Button3.Visible = false;
                    GridView1.Columns[5].Visible = true;
                }

                if (Session["role"].ToString() == "卖家")
                {
                    Button1.Visible = false;
                }
                
                dd();
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox4.Enabled = false;
                TextBox5.Enabled = false;

            }
            if (Request["id"] != null)
            {
                bind();
                Label1.Text = Request["id"].ToString();
            }
            Sums();
            //dz();
        }
    }

    //private void dz()
    //{
    //    string sSql = "select * from Users where users='" + Session["users"].ToString() + "'";
    //    SQL s = new SQL();
    //    DataSet ds = s.DSSearch(sSql);
    //    DataView dv = ds.Tables[0].DefaultView;
    //    if (dv.Count > 0)
    //    {
    //        TextBox2.Text = dv[0].Row["address"].ToString();
    //        TextBox3.Text = dv[0].Row["phone"].ToString();
    //        TextBox4.Text = dv[0].Row["name"].ToString();
    //    }
    //}

    private void dd()
    {
        string sSql = "select * from [Order] where orderid='" + Request["orderid"].ToString() + "'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        if (ds.Tables[0].Rows.Count > 0)
        {
            TextBox2.Text = ds.Tables[0].Rows[0]["address"].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0]["phone"].ToString();
            TextBox4.Text = ds.Tables[0].Rows[0]["people"].ToString();
            TextBox5.Text = ds.Tables[0].Rows[0]["notes"].ToString();
            TextBox1.Text = ds.Tables[0].Rows[0]["sendCompany"].ToString();
            TextBox7.Text = ds.Tables[0].Rows[0]["sendNum"].ToString();
            TextBox6.Text = ds.Tables[0].Rows[0]["sendDate"].ToString();
            TextBox8.Text = ds.Tables[0].Rows[0]["express"].ToString();
            TextBox9.Text = ds.Tables[0].Rows[0]["backReason"].ToString();
            if (string.IsNullOrEmpty(TextBox6.Text))
            {
                TextBox6.Text = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            }
        }
    }
   

    private void OrderDetail()
    {
        string sSql = "select a.*,b.title,b.sort,b.image,b.id as spid from OrderDetail a left join goods b on a.bookid=b.id where orderid='" + Request["orderid"].ToString() + "'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    private void bind()
    {
        string sSql = "select a.*,b.title,b.sort,b.image,b.id as spid from OrderDetail a left join goods b on a.bookid=b.id where orderid='" + Request["orderid"].ToString() + "'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)//加载表头背景
        {
            e.Row.Attributes.Add("style", "background-image:url('../image/log/bg.jpg')");
        }

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string id = GridView1.DataKeys[e.NewEditIndex]["id"].ToString();
        string sSql = "delete OrderDetail where id=" + id;
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {

            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '已删除！'); </script> ");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除失败！'); </script> ");
        }
        bind();
        Sums();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = GridView1.DataKeys[e.RowIndex]["spid"].ToString();
        Response.Redirect("SpDetail.aspx?id=" + id);
    }

    private void Sums()
    {
        double sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            double s = 0;
            if (double.TryParse(GridView1.Rows[i].Cells[3].Text, out s))
            {
                sum += s;
            }
        }
        Label2.Text = sum.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string orderid = string.Empty;
        if (Request["id"] == null && Request["orderid"] != null)
        {
            orderid = Request["orderid"].ToString();
        }
        if (Request["id"] != null && Request["orderid"] == null)
        {
            orderid = Request["id"].ToString();
        }
        string sSql = "update OrderDetail set state='2' where orderid='" + orderid + "'";
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {
            string insert = "update  [Order] set state='2' where orderid='" + orderid + "'";
            SQL s1 = new SQL();
            bool rt = s1.SqlResults(insert);
            if (rt)
            {
                Response.Redirect("Zf.aspx");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除失败！'); </script> ");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(TextBox1.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '物流公司不能为空！'); </script> ");
            return;
        }
        if (string.IsNullOrEmpty(TextBox7.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '物流编号不能为空！'); </script> ");
            return;
        }
        string orderid = string.Empty;
        if (Request["id"] == null && Request["orderid"] != null)
        {
            orderid = Request["orderid"].ToString();
        }
        if (Request["id"] != null && Request["orderid"] == null)
        {
            orderid = Request["id"].ToString();
        }
        string sSql = "update OrderDetail set state='3' where orderid='" + orderid + "'";
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {
            string insert = "update  [Order] set state='3',sendCompany='" + TextBox1.Text + "',sendNum='" + TextBox7.Text + "',sendDate='"+TextBox6.Text+"' where orderid='" + orderid + "'";
            SQL s1 = new SQL();
            bool rt = s1.SqlResults(insert);
            if (rt)
            {
                Response.Write("<script>alert('已发货！');window.location='MyOrder.aspx';</script>");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除失败！'); </script> ");
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(TextBox8.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '上门取货物流不能为空！'); </script> ");
        }
        else
        {
            string insert = "update  [Order] set state='6',express='" + TextBox8.Text + "' where orderid='" + Request["orderid"].ToString() + "'";
            SQL s1 = new SQL();
            bool rt = s1.SqlResults(insert);
            if (rt)
            {
                Response.Write("<script>alert('已处理！');window.location='MyOrder.aspx';</script>");
            }
        }
    }
}
