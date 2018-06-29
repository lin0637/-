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
                OrderDetail();
                Label1.Text = Request["orderid"].ToString();
                if (Request["state"] != null && Request["state"].ToString() == "1")
                {
                    GridView1.Columns[4].Visible = false;
                    Button1.Visible = false;
                }
            }
            if (Request["id"] != null)
            {
                bind();
                Label1.Text = Request["id"].ToString();
            }
            Sums();
           
        }
    }
   

    private void OrderDetail()
    {
        string sSql = "select a.*,b.title,b.sort,b.image from OrderDetail a left join Goods b on a.bookid=b.id where orderid='" + Request["orderid"].ToString() + "'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    private void bind()
    {
        string sSql = "select a.*,b.title,b.sort,b.image from OrderDetail a left join Goods b on a.bookid=b.id where orderid='" + Request["id"].ToString() + "'";
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
        string sSql = "update OrderDetail set state='1' where orderid='" + orderid + "'";
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result == true)
        {
            string insert = "insert into  [Order] values('" + orderid + "','" + Session["users"].ToString() + "','" + DateTime.Now + "','1')";
            SQL s1 = new SQL();
            bool rt = s1.SqlResults(insert);
            if (rt)
            {
                Response.Write("<script>alert('支付成功！');window.location='MyOrder.aspx';</script>");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除失败！'); </script> ");
        }
    }
}
