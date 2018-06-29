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

public partial class Main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["users"] == null)
            {
                Image1.ImageUrl = "image/log/logd.jpg";
            }
            else
            {
                if (Session["role"].ToString() == "员工")
                {
                    bind();
                }
                else
                {
                    Image1.ImageUrl = "image/log/logd.jpg";
                }
            }
            lj();
        }
    }

    private void lj()
    {
        string sSql = "select * from Links";
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sSql);// s.DSSearch(sSql);
        DataList1.DataSource = ds;
        DataList1.DataBind();
    }

    private void bind()
    {
        string sSql = "select * from Users where users='" + Session["users"].ToString() + "'";
        SQL s = new SQL();
        DataView ds = s.DSSearch(sSql).Tables[0].DefaultView;
        if(ds.Count>0)
        Image1.ImageUrl = "image/log/"+ ds[0].Row["image"].ToString();
    }
}
