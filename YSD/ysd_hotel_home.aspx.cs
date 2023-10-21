using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ysd_hotel_home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("ysd_login.aspx");
        }
        else
        {

        }
        if (!IsPostBack)
        {
            string cs = ConfigurationManager.ConnectionStrings["ysd"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select Id, city from hotel", con);
                con.Open();
                ddcity.DataSource = cmd.ExecuteReader();
                ddcity.DataBind();

            }
        }
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        Session["checkinDate"] = txt_in.Text;
        Session["checkoutDate"] = txt_out.Text;
        String con = ConfigurationManager.ConnectionStrings["ysd"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(con);
        String qry = "select Id, hotel_name, state, city, address, helpline_no from hotel where city='" + ddcity.SelectedItem.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        sqlcon.Open();
        SqlDataAdapter sdr = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sdr.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        sqlcon.Close();

        Session["city"] = ddcity.SelectedItem.Text;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txt_in.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        Calendar1.Visible = false;
        cal_out.Enabled = true;
        
    }

    protected void cal_in_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txt_out.Text = Calendar2.SelectedDate.ToString("dd/MM/yyyy");
        Calendar2.Visible = false;
        btn_search.Enabled = true;
    }
    protected void cal_out_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }
}