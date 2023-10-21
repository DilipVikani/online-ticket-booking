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


public partial class Admin_ysd_admin_hotel_update : System.Web.UI.Page
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
        String id = Request.QueryString["id"].ToString();
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from hotel where id ='" + id + "'", con);
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
       
        String city = (item.FindControl("txt_city") as TextBox).Text.Trim();
        String hname = (item.FindControl("txt_name") as TextBox).Text.Trim();

        String state = (item.FindControl("txt_state") as TextBox).Text.Trim();
        String address = (item.FindControl("txt_address") as TextBox).Text.Trim();
        String rate = (item.FindControl("txt_rate") as TextBox).Text.Trim();
        String number = (item.FindControl("txt_helpline") as TextBox).Text.Trim();


        //connection
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        String upqry = "update hotel set hotel_name=@hname,rate=@rate,city=@city,helpline_no=@helpline_no,state=@state,address=@address where id=@id";
        SqlCommand cmd = new SqlCommand(upqry, con);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Parameters.AddWithValue("@hname", hname);
        cmd.Parameters.AddWithValue("@rate", rate);
        cmd.Parameters.AddWithValue("@city", city);
        cmd.Parameters.AddWithValue("@state", state);
        cmd.Parameters.AddWithValue("@helpline_no", number);
        cmd.Parameters.AddWithValue("@address", address);
        int res = cmd.ExecuteNonQuery();
        if (res == 1)
        {

            Response.Write("<script>alert('Hotel Information Updated . ');window.location=('ysd_admin_hoteldetails.aspx');</script>");
            fillgrid();
        }
        else
        {
            Response.Write("<script>alert('Hotel Information Not Updated ! Try Again . ');window.location=('ysd_admin_hoteldetails.aspx');</script>");
        }
        con.Close();
    }

}




