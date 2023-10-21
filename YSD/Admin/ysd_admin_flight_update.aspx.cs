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
using System.Web.Resources;

public partial class Admin_ysd_admin_flight_update : System.Web.UI.Page
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


    public void fillgrid()
    {
        String id = Request.QueryString["id"].ToString();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from FlightRoute where id ='" + id + "'", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        show1.DataSource = ds;
        show1.DataBind();

    }

    protected void lnkUpdate_Click(object sender, EventArgs e)
    {
        
        //String id = Request.QueryString["id"];
        RepeaterItem item = (sender as Button).Parent as RepeaterItem;
        int id = int.Parse((item.FindControl("lbl_id") as Label).Text);

        String ft = (item.FindControl("fto") as TextBox).Text.Trim();
        String ff = (item.FindControl("ffrom") as TextBox).Text.Trim();

        String arr = (item.FindControl("arrtime") as TextBox).Text.Trim();
        String dep = (item.FindControl("deptime") as TextBox).Text.Trim();
        String k = (item.FindControl("km") as TextBox).Text.Trim();
        String rt = (item.FindControl("rate") as TextBox).Text.Trim();


        //connection
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        String upqry = "update FlightRoute set FlightTo=@ft,FlightFrom=@ff,arr_time=@arr,dep_time=@dep,km=@k,rate=@rt where id=@id";
        SqlCommand cmd = new SqlCommand(upqry, con);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@ft", ft);
        cmd.Parameters.AddWithValue("@ff", ff);
        cmd.Parameters.AddWithValue("@arr", arr);
        cmd.Parameters.AddWithValue("@dep", dep);
        cmd.Parameters.AddWithValue("@k", k);
        cmd.Parameters.AddWithValue("@rt", rt);
        int res = cmd.ExecuteNonQuery();
        if (res == 1)
        {

            Response.Write("<script>alert('Flight Information Updated . ');window.location=('ysd_admin_flight.aspx');</script>");
            fillgrid();
        }
        else
        {
            Response.Write("<script>alert('Flight Information Not Updated ! Try Again . ');window.location=('ysd_admin_flight.aspx');</script>");
        }
        con.Close();
    }
}