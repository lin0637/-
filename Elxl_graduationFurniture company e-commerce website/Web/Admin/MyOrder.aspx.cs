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
using System.IO;

public partial class Admin_GoodsDd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["role"].ToString() == "管理员")
            {
                AllBind();
            }
            if (Session["role"].ToString() == "用户")
            {
                bind(); 
            }

            if (Session["role"].ToString() == "卖家")
            {
                AllBind1();
            }
        }
    }
    private void bind()
    {
        string sSql = "select a.orderid,b.state,b.dates from OrderDetail a left join [Order] b on a.orderid=b.orderid where a.users='" + Session["users"].ToString() + "' and a.orderid<>'' and a.state in('1','2','3','4') group by a.orderid,b.state,b.dates";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    private void AllBind()
    {
        string sSql = "select a.orderid,b.state,b.dates from OrderDetail a left join [Order] b on a.orderid=b.orderid where a.state in('1','2','3','4')  group by a.orderid,b.state,b.dates";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    private void AllBind1()
    {
        string sSql = "select a.orderid,b.state,b.dates from OrderDetail a left join [Order] b on a.orderid=b.orderid where a.state in('1','2','3','4') and a.sell='"+Session["users"].ToString()+"'  group by a.orderid,b.state,b.dates";
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
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[1].Text == "1")
            {
                e.Row.Cells[1].Text = "未付款";
                e.Row.Cells[3].Text = "";
                //e.Row.Cells[4].Text = "";
            }
            if (e.Row.Cells[1].Text == "2")
            {
                e.Row.Cells[1].Text = "已付款，等待发货";
                e.Row.Cells[3].Text = "";
                //e.Row.Cells[4].Text = "";


            }
            if (e.Row.Cells[1].Text == "3")
            {
                e.Row.Cells[1].Text = "已发货";
                if (Session["role"].ToString() == "管理员" || Session["role"].ToString() == "卖家")
                {
                    e.Row.Cells[3].Text = "";
                }
                //e.Row.Cells[4].Text = "";

            }
            if (e.Row.Cells[1].Text == "4")
            {
                e.Row.Cells[1].Text = "已收货";
                e.Row.Cells[3].Text = "";

            }
            if (e.Row.Cells[1].Text == "5")
            {
                e.Row.Cells[1].Text = "退货中";
                e.Row.Cells[3].Text = "";
                //e.Row.Cells[4].Text = "";
            }
            if (e.Row.Cells[1].Text == "6")
            {
                e.Row.Cells[1].Text = "已退货";
                e.Row.Cells[3].Text = "";
                //e.Row.Cells[4].Text = "";
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //确认收货
        string orderid = GridView1.DataKeys[e.NewEditIndex].Value.ToString();
        string sSql = "update [order] set state='4' where orderid='" + orderid + "'";
        SQL s = new SQL();
        bool result = s.SqlResults(sSql);
        if (result)
        {
            string sSql1 = "update [OrderDetail] set state='4' where orderid='" + orderid + "'";
            SQL s1 = new SQL();
            bool result1 = s1.SqlResults(sSql1);
            if (result1)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '已确认收货！'); </script> ");
            }
        }
        if (Session["role"].ToString() != "管理员")
        {
            bind();
        }
        else
        {
            AllBind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string orderid = GridView1.DataKeys[e.RowIndex].Value.ToString();
        Response.Redirect("Thadd.aspx?id=" + orderid);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Columns[3].Visible = false;
        GridView1.Columns[4].Visible = false;
        ExportGrid("报表.xls", GridView1);
        GridView1.Columns[3].Visible = true ;
        GridView1.Columns[4].Visible = true;
    }

    public void ExportGrid(string FileName, GridView dg)
    {
        string attachment = "attachment; filename=Report.xls";
        HttpContext.Current.Response.ClearContent();
        HttpContext.Current.Response.AddHeader("content-disposition", attachment);
        HttpContext.Current.Response.ContentType = "application/ms-excel";
        HttpContext.Current.Response.Charset = "gb2312";
        HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");
        HttpContext.Current.Response.Charset = "gb2312";
        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);
        HtmlForm frm = new HtmlForm();
        dg.Parent.Controls.Add(frm);
        frm.Attributes["runat"] = "server";
        frm.Controls.Add(dg);
        frm.RenderControl(htw);
        HttpContext.Current.Response.Write(sw.ToString());
        HttpContext.Current.Response.End();

    }

}
