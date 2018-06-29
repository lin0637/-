using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request["sort"] != null)
            {
                goodsbind();
            }
            else
            {
                goods();
            }
            sort();
            gg();
        }

    }

    private void gg()
    {
        string sSql = "select * from Notice order by id desc";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        PagedDataSource pds = new PagedDataSource();//初始化PagedDataSource实例，主要用做DataList1的分页使用
        pds.AllowPaging = true;//允许分页
        pds.PageSize = 6;//每页显示7条
        pds.DataSource = ds.Tables[0].DefaultView;//将检索出的ds数据集绑定给PagedDataSource实例pds
        DataList6.DataSource = pds;//将pds内容最终绑定给DataList1，呈现到界面中
        DataList6.DataBind();
    }
  
    private void goods()
    {
        string sSql = "select * from goods where 1=1";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        PagedDataSource pds = new PagedDataSource();//初始化PagedDataSource实例，主要用做DataList1的分页使用
        pds.AllowPaging = true;//允许分页
        pds.PageSize = 15;//每页显示10条
        pds.DataSource = ds.Tables[0].DefaultView;//将检索出的ds数据集绑定给PagedDataSource实例pds

        DataList2.DataSource = pds;//将pds内容最终绑定给DataList1，呈现到界面中
        DataList2.DataBind();
       
    }
    private void goodsbind()
    {
        string sSql = "select * from goods where sort='" + Request["sort"].ToString() + "'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        PagedDataSource pds = new PagedDataSource();//初始化PagedDataSource实例，主要用做DataList1的分页使用
        pds.AllowPaging = true;//允许分页
        pds.PageSize = 15;//每页显示10条
        pds.DataSource = ds.Tables[0].DefaultView;//将检索出的ds数据集绑定给PagedDataSource实例pds
        DataList2.DataSource = pds;//将pds内容最终绑定给DataList1，呈现到界面中
        DataList2.DataBind();
    }
    private void sort()
    {
        string sSql = "select * from Sort";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '登录名或密码不能为空！'); </script> ");
        }
        else
        {
            string sSql = "select * from Users where users='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "' and role='"+DropDownList1.Text+"'";
            SQL s = new SQL();
            DataView ds = s.DSSearch(sSql).Tables[0].DefaultView;
            if (ds.Count > 0)
            {
                Session["users"] = TextBox1.Text;
                Session["role"] = ds[0].Row["role"].ToString();
                if (DropDownList1.Text == "管理员")
                {
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    Response.Redirect("Main.aspx");
                }
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '密码错误！'); </script> ");
            }
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserAdd.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Pwd.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        string sSql = "select * from Goods where 1=1";
        if(!string.IsNullOrEmpty(TextBox4.Text))
        {
            sSql += " and title like '%" + TextBox4.Text.Trim() + "%'";
        }
       
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
