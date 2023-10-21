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
using System.IO;

public partial class Admin_ysd_admin_flight : System.Web.UI.Page
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

    protected void add_flight(object sender, EventArgs e)
    {
        Response.Redirect("ysd_admin_flight_add.aspx");

    }



    public void fillgrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from FlightRoute", con);
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


            SqlCommand cmd2 = new SqlCommand("delete from FlightRoute where id=@id", con);
            cmd2.Parameters.AddWithValue("@id", btn.CommandArgument);
            int res = cmd2.ExecuteNonQuery();
            if (res > 0)
            {
                fillgrid();
                Response.Write("<script>alert(' Flight Rotue  Deleted !..  ');window.location=('ysd_admin_flight.aspx');</script>");
                //Response.Write("Record delete");
                con.Close();
            }
            else
            {
                fillgrid();
                Response.Write("<script>alert(' Flight Rotue Not  Deleted !.. Try Again..  ');window.location=('ysd_admin_flight.aspx');</script>");
                //Response.Write("Record not delete");
                con.Close();
            }
        }
    }
}