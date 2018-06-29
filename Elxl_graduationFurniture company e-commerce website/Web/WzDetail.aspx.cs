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
public partial class Default2 : System.Web.UI.Page
{
    public static  string files;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request["id"].ToString();
        if (!IsPostBack)
        {
            bind(id);
           
        }
    }

    public string OutputBySize(string p_strContent, int pageid)
    {
        int m_intCurrentPage = 1;//设置第一页为初始页
        string[] seperator = { "[page]" };
        string[] nrs = p_strContent.Split(seperator, StringSplitOptions.None);
        if (Request.QueryString["pages"] != null)
        {//set Current page number
            try
            {//处理不正常的地址栏的值
                m_intCurrentPage = Convert.ToInt32(Request.QueryString["pages"]);
                if (m_intCurrentPage > nrs.Length)
                    m_intCurrentPage = nrs.Length;
            }
            catch
            {
                //  m_intCurrentPage = m_intCurrentPage;
            }
            
        }
        string m_strPageInfo = "<p></p>";
        for (int i = 1; i <= nrs.Length; i++)
        {
            if (i == m_intCurrentPage)
            {
                if (i == 15)
                {
                    m_strPageInfo += "<br/><b style='color:#7B68EE'>第" + i + "页</b>｜";
                }
                else
                {
                    m_strPageInfo += "<b style='color:#7B68EE'>第" + i + "页</b>｜";
                }
            }

            else
                if (i == 1)
                {
                    m_strPageInfo += "<a style='text-decoration:none;color:#666666' href=WzDetail.aspx?id=" + pageid + ">第" + i + "页</a>｜";
                }
                else if (i == 15)
                {
                    m_strPageInfo += "<br/><a style='text-decoration:none;color:#666666' href=WzDetail.aspx?id=" + pageid + "&pages=" + i + ">第" + i + "页</a>｜";
                }
                else
                    m_strPageInfo += "<a style='text-decoration:none; color:#666666' href=WzDetail.aspx?id=" + pageid + "&pages=" + i + ">第" + i + "页</a>｜";
        }
        //输出显示各个页码
        this.Literal2.Text = m_strPageInfo;
        return nrs[m_intCurrentPage - 1];
    }

    private void bind(string id)
    {
        
        string strid = id;
        int fid = 1;

        fid = int.Parse(strid);

        string sSql = "select * from Product where id=" + Request["id"].ToString();
        SQL s = new SQL();
        DataSet ds = new DataSet();
        ds.Tables.Clear();
        ds = s.DSSearch(sSql);
        DataView dv = ds.Tables[0].DefaultView;
        Image1.ImageUrl = "image/goods/" + dv[0].Row["image"].ToString();
        string nr = "";
        if (dv[0].Row["contents"].ToString() == "")
        {
            nr = "无内容";
        }
        else
        {
            nr = dv[0].Row["contents"].ToString();
        }
        contents.Text = OutputBySize(Server.HtmlDecode(nr), fid);//nr内容
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("ScDetail.aspx?id=" + Request["id"].ToString());
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
       
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
       
    }
    protected void ImageButton3_Click1(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        
    }
}
