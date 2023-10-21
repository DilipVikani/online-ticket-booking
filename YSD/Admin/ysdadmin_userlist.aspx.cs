using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;


public partial class Admin_ysdadmin_userlist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("ysd_admin_login.aspx");
        }
        if (!IsPostBack)
        {
            fillgrid();
        }


    }

    public void fillgrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from users", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        show1.DataSource = ds;
        show1.DataBind();

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
            SqlCommand cmd = new SqlCommand("delete from users where id=@id", con);
            cmd.Parameters.AddWithValue("@id", btn.CommandArgument);
            int res = cmd.ExecuteNonQuery();
            if (res > 0)
            {
                fillgrid();
                Response.Write("<script>alert(' User Data Deleted !..  ');window.location=('ysdadmin_userlist.aspx');</script>");
                //Response.Write("Record delete");
                con.Close();
            }
            else
            {
                fillgrid();
                Response.Write("<script>alert(' User Data Not  Deleted !.. Try Again..  ');window.location=('ysdadmin_userlist.aspx');</script>");
                //Response.Write("Record not delete");
                con.Close();
            }
        }
    }
}