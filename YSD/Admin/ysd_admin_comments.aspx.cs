using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_ysd_admin_comments : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("ysd_admin_login.aspx");
        }
        if (!IsPostBack)
        {
            fillgrid();
           fillgrid2();
        }
      
    }
    public void fillgrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        String tt = "unread";
        SqlCommand cmd = new SqlCommand("select * from contactus where noti='"+ tt +"'", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        show1.DataSource = ds;
        show1.DataBind();

    }

    public void fillgrid2()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        String tt = "Read";
        SqlCommand cmd = new SqlCommand("select * from contactus where noti='" + tt + "'", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        show2.DataSource = ds;
        show2.DataBind();

    }
   
    protected void lnkEdit_Click(object sender, EventArgs e)
    {
        Button btn = (sender as Button);
        string btn_id = btn.ID;
        String temp = "Read";
        if (btn.CommandName == "edit")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("update contactus set noti='"+ temp +"' where id=@id", con);
            cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Redirect("ysd_admin_comments.aspx");
                
            }
            //{

            //    Response.Write("<script>alert(' Comments Deleted !..  ');window.location=('ysd_admin_comments.aspx');</script>");
            //    //Response.Write("Record delete");
            //    con.Close();
            //}
            //else
            //{

            //    Response.Write("<script>alert(' Comments Not  Deleted !.. Try Again..  ');window.location=('ysd_admin_comments.aspx');</script>");
            //    //Response.Write("Record not delete");
            //    con.Close();
            //}
        }

    }

    protected void lnkDelete_Click(object sender, EventArgs e)
    {
        Button btn = (sender as Button);
        string btn_id = btn.ID;
        if (btn.CommandName == "delete")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("delete from contactus where id=@id", con);
            cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                
                Response.Write("<script>alert(' Comments Deleted !..  ');window.location=('ysd_admin_comments.aspx');</script>");
                //Response.Write("Record delete");
                con.Close();
            }
            else
            {
                
                Response.Write("<script>alert(' Comments Not  Deleted !.. Try Again..  ');window.location=('ysd_admin_comments.aspx');</script>");
                //Response.Write("Record not delete");
                con.Close();
            }
        }
    }
   
}