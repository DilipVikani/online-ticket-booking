﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_ysd_admin_flight_add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("ysd_admin_login.aspx");
        }
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        String ft = fto.Text;
        String ffr = ffrom.Text;
        String arr_t = arr_time.Text;
        String dep_t = dep_time.Text;
        String k = km.Text;
        String rt = rate.Text;


        cmd.CommandText = "insert into FlightRoute values('" + ft + "','" + ffr + "','" + dep_t + "','" + arr_t + "','" + k + "','" + rt + "')";
        int x = cmd.ExecuteNonQuery();


        if (x > 0)
        {

                Response.Write("<script>alert('Flight Route  added! '); window.location=('ysd_admin_flight.aspx');</script>");

        }
        else
        {
            Response.Write("<script>alert('Flight Route not added! try agin.');</script>");

        }

        con.Close();
    }
}
