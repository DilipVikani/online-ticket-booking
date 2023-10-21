using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

public partial class Admin_ysd_admin_busdetails : System.Web.UI.Page
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
        }

    }

    protected void add_bus(object sender, EventArgs e)
    {
        Response.Redirect("ysd_admin_bus_add.aspx");

    }



    public void fillgrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from BusRoute", con);
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



            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            SqlCommand cmd2 = new SqlCommand("delete from BusRoute where id=@id", con);
            cmd2.Parameters.AddWithValue("@id", btn.CommandArgument);
            int res = cmd2.ExecuteNonQuery();
            if (res > 0)
            {
                fillgrid();
                Response.Write("<script>alert(' Bus Rotue  Deleted !..  ');window.location=('ysd_admin_busdetails.aspx');</script>");
                //Response.Write("Record delete");
                con.Close();
            }
            else
            {
                fillgrid();
                Response.Write("<script>alert(' Bue Rotue Not  Deleted !.. Try Again..  ');window.location=('ysd_admin_busdetails.aspx');</script>");
                //Response.Write("Record not delete");
                con.Close();
            }
        }
    }


}