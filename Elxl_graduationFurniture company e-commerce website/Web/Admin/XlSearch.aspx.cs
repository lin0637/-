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
            bind();
            
        }
    }
    private void bind()
    {
        DataSet ds = new DataSet();
        string sSql = "select bookid,count(*) as xl,b.title,b.sort,b.image from OrderDetail a left join Goods b on a.bookid=b.id group by bookid,b.title, b.sort,b.image";
        SQL s = new SQL();
        ds = s.DSSearch(sSql);
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
            //if (e.Row.Cells[4].Text.Length > 10)
            //{
            //    //e.Row.Cells[4].Text = e.Row.Cells[4].Text.Substring(0, 10) + "...";
            //}
        
        }

    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
      
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
}
