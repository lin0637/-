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
        if (!IsPostBack)
        {
            goods();
        }

    }
   
    private void goods()
    {

        string sSql = "select a.*,isnull((select count(*) from orderdetail where bookid=a.id group by bookid),0) as xl from goods a  order by xl desc ";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        PagedDataSource pds = new PagedDataSource();//初始化PagedDataSource实例，主要用做DataList1的分页使用
        pds.AllowPaging = true;//允许分页
        pds.PageSize = 15;//每页显示10条
        pds.DataSource = ds.Tables[0].DefaultView;//将检索出的ds数据集绑定给PagedDataSource实例pds

        DataList2.DataSource = pds;//将pds内容最终绑定给DataList1，呈现到界面中
        DataList2.DataBind();

    }

    
    
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin/main.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("Default.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string sSql = "select * from Goods where title like '%" + TextBox4.Text.Trim() + "%'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        PagedDataSource pds = new PagedDataSource();//初始化PagedDataSource实例，主要用做DataList1的分页使用
        pds.AllowPaging = true;//允许分页
        pds.PageSize = 15;//每页显示10条
        pds.DataSource = ds.Tables[0].DefaultView;//将检索出的ds数据集绑定给PagedDataSource实例pds

        DataList2.DataSource = pds;//将pds内容最终绑定给DataList1，呈现到界面中
        DataList2.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.Header)//加载表头背景
        {
            e.Row.Attributes.Add("style", "background-image:url('image/log/bg.jpg')");
        }
    }
}
