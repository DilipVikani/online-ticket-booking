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
using System.Drawing;
using System.IO;

public partial class Admin_ysd_admin_flight_moredetails : System.Web.UI.Page
{
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
        String id = Request.QueryString["id"];
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from FlightRoute where id ='" + id + "'", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        show1.DataSource = ds;
        show1.DataBind();

    }
}