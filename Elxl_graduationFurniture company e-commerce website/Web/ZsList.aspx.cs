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

public partial class Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
            
           
          
            if (Request["sort"] != null)
            {
                goodsbind();
            }
            else
            {
                goods();
            }
           
        //}
       
    }

    

    /// <summary>//分页函数

    private void goods()
    {
        string sSql = "select * from Help where 1=1";
        if (!string.IsNullOrEmpty(TextBox3.Text))
        {
            sSql += " and title like '%" + TextBox3.Text + "%'";
        }
        
        
        sSql += " order by id desc";

        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
    }

    private void goodsbind()
    {
        string sSql = "select * from Help where sort='" + Request["sort"].ToString() + "' ";
        if (!string.IsNullOrEmpty(TextBox3.Text))
        {
            sSql += " and title like '%" + TextBox3.Text + "%'";
        }
        
        
        sSql += " order by id desc";

        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
    }

    protected void AspNetPager2_PageChanged(object sender, EventArgs e)
    {
        string sSql = "select * from Help where 1=1 ";
        if (Request["sort"] != null)
        {
            sSql += " and sort='" + Request["sort"].ToString() + "'";
        }
        if (!string.IsNullOrEmpty(TextBox3.Text))
        {
            sSql += " and title like '%" + TextBox3.Text + "%'";
        }
        
        sSql += " order by id desc";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        GridView1.DataSource = ds;
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataBind();
    }


   
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserReg.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin/Default.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request["sort"] != null)
        {
            goodsbind();
        }
        else
        {
            goods();
        }
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        if (Request["sort"] != null)
        {
            goodsbind();
        }
        else
        {
            goods();
        }
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)//加载表头背景
        {
            e.Row.Attributes.Add("style", "background-image:url('image/log/bg.jpg')");
        }
    }
}
