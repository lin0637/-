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

public partial class Message : System.Web.UI.Page
{
    public static bool dele = false;
    public static string titleID = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["users"] != null)
            {
                if (Session["users"].ToString() == "admin")
                {
                    dele = true;
                }
                else
                {
                    dele = false;
                }
                TextBox1.ReadOnly = true;
                TextBox1.Text = Session["users"].ToString();
            }
            else
            {
                TextBox1.ReadOnly = true;
                TextBox1.Text = "游客";
            }
            bind();
        }
    }
    private void bind()
    {
        //titleID = Request["id"].ToString();
        string sSql = "select * from tb_Message  order by fbsj desc";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        DataList1.DataSource = ds;//将pds内容最终绑定给DataList1，呈现到界面中
        DataList1.DataBind();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["users"] == null)
        {
            Response.Write("<script>alert('请先登录');window.location='Default.aspx';</script>");
        }
        if (TextBox1.Text == "")
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '请输入称呼！'); </script> ");


        }
        else
        {
            if (TextBox2.Text == "")
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '请输入正文！'); </script> ");


            }
            else
            {
                string fbbt = TextBox5.Text;
                string fbnr = TextBox2.Text;
                string fbr = TextBox1.Text;
                string fbsj = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                string images = "";
               
               
                string sSql = "insert into tb_Message(fbbt,fbnr,fbr,fbsj,images) values('" + fbbt + "','" + fbnr + "','" + fbr + "','" + fbsj + "','" + images + "')";
                SQL s = new SQL();
                bool result = s.SqlResults(sSql);
                if (result == true)
                {
                   // Response.Redirect("Message.aspx");
                   
                    bind();
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '发布失败！'); </script> ");
                }
            }

        }
    }
    protected void DataList1_ItemCreated(object sender, DataListItemEventArgs e)
    {
        if (e.Item.DataItem != null)
        {
            
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
            string sSql = "delete from tb_Message where id=" + id;
            SQL s = new SQL();
            bool result = s.SqlResults(sSql);
            if (result == true)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除成功！'); </script> ");

                bind();

            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '删除失败！'); </script> ");
            }

        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox5.Text = null;
        TextBox2.Text = "";
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
                string sSql = "select * from MesReplay where mesID=" + mainID + " order by id desc";
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
