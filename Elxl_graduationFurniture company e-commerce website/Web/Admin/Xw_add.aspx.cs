﻿using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class gg_add : System.Web.UI.Page
{
    public string lb,lbtxt,sql; //定义全局变量
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request["id"] != null)
            {
                bind();
                Button1.Visible = false;
                Button2.Visible = true;
            }
            else
            {
                Button1.Visible = true;
                Button2.Visible = false;
            }
        }
    }

    private void bind()
    {
        string sqlText = " select * from Notice where id=" + Request["id"].ToString();
        SQL s = new SQL();
        DataSet ds = s.DSSearch(sqlText);
        if (ds.Tables[0].Rows.Count > 0)
        {
            title.Text = ds.Tables[0].Rows[0]["title"].ToString();
            FCKeditor1.Value = ds.Tables[0].Rows[0]["contents"].ToString();           

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(title.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '标题不能为空！'); </script> ");
            return;
        }
        if (Session["role"].ToString() == "普通用户")
        {
            sql = "insert into Notice values('" + title.Text.ToString().Trim() + "','" + FCKeditor1.Value + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + Session["users"].ToString() + "')";
        }
        else
        {
            //sql语句意思是:向表中插入新数据
            sql = "insert into Notice values('" + title.Text.ToString().Trim() + "','" + FCKeditor1.Value + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "','" + Session["users"].ToString() + "')";
        }
        SQL s = new SQL();
        bool result = s.SqlResults(sql);
        if (result == true)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加成功！'); </script> ");
            FCKeditor1.Value = "";
            title.Text = "";
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '添加失败！'); </script> ");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string strUpdate = "update Notice set title='" + title.Text + "',contents='" + FCKeditor1.Value + "' where id=" + Request["id"].ToString();
        SQL s = new SQL();
        bool result = s.SqlResults(strUpdate);
        if (result == true)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '更新成功！'); </script> ");
            FCKeditor1.Value = "";
            title.Text = "";
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "", " <script> alert( '更新失败！'); </script> ");
        }
    }
}
