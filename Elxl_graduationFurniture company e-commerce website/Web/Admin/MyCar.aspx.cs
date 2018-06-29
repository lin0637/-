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
            TextBox1.Text = DateTime.Now.ToString("DDyyyyMMddHHmmss");
            bind();
            Sums();
            dz();
            if (GridView1.Rows.Count == 0)
            {
                t1.Visible = false;
            }
        }
    }

    private void dz()
    {
        string sSql = "select * from Users where users='" + Session["users"].ToString() + "'";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);
        DataView dv = ds.Tables[0].DefaultView;
        if (dv.Count > 0)
        {
            TextBox3.Text = dv[0].Row["address"].ToString();
            TextBox4.Text = dv[0].Row["phone"].ToString();
            TextBox5.Text = dv[0].Row["name"].ToString();
        }
    }

    private void bind()
    {
        string buyusers = Session["users"].ToString();
        string sSql = "select a.*,b.title,b.sort,b.image from OrderDetail a left join Goods b on a.bookid=b.id where a.users='" + buyusers + "' and a.state = '0'";
        SQL s = new SQL();
        DataSet ds1 = s.DSSearch(sSql);
        GridView1.DataKeyNames = new string[] { "id" };
        GridView1.DataSource = ds1;
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
        TextBox2.Text = sum.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count == 0 || TextBox2.Text=="" || TextBox2.Text=="0")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '暂无可支付的商品！'); </script> ");
            return;
        }
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cb != null && cb.Checked)
            {
                string id = GridView1.DataKeys[i].Value.ToString();
                string sSql = "update OrderDetail set state='1',orderid='" + TextBox1.Text + "' where id=" + id;
                SQL s1 = new SQL();
                bool rt = s1.SqlResults(sSql);
            }
        }
        string insert = "insert into  [Order] values('" + TextBox1.Text + "','" + Session["users"].ToString() + "','" + DateTime.Now + "','1','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"','','','','','')";
        SQL s2 = new SQL();
        bool rt2 = s2.SqlResults(insert);
        if (rt2)
        {
            Response.Write("<script>alert('生成订单成功，准备支付！');window.location='OrderSearch.aspx?orderid="+ TextBox1.Text+"&state=1';</script>");
        }
        bind();
        Sums();
    }

    protected void ItemCheckBox_CheckedChanged(object sender, EventArgs e)
    {
        double sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb =(CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (cb != null && cb.Checked)
            {
                sum+= double.Parse( GridView1.Rows[i].Cells[4].Text);
            }
        }
        TextBox2.Text = sum.ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string buyusers = Session["users"].ToString();
        string sSql = "delete from OrderDetail where users='" + buyusers + "' and state = '0'";
        SQL s = new SQL();
        bool rt = s.SqlResults(sSql);
        if (rt)
        {
            Response.Write("<script>alert('已清空！');window.location='MyCar.aspx';</script>");
            return;
        }
    }
}
