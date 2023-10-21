using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class _ysd_bus_home : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["user"] == null)
        {
            Response.Redirect("ysd_login.aspx");
        }
        else
        {
           
        }
   
        if(!IsPostBack)
        {
            string cs = ConfigurationManager.ConnectionStrings["ysd"].ConnectionString;
            using(SqlConnection con=new SqlConnection(cs))
            {   
                SqlCommand cmd = new SqlCommand("Select Id, BusTo from BusRoute", con);
                con.Open();
                Ddto.DataSource = cmd.ExecuteReader();
                Ddto.DataBind();

            }
            using (SqlConnection con1 = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select Id,  BusFrom from BusRoute", con1);
                con1.Open();
                Ddfrom.DataSource = cmd.ExecuteReader();
                Ddfrom.DataBind();

            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
      
        String con = ConfigurationManager.ConnectionStrings["ysd"].ConnectionString;
        SqlConnection sqlcon = new SqlConnection(con);
        String qry = "select Id,BusTo, BusFrom, dep_time, arr_time, km from BusRoute where BusTo='"+Ddto.SelectedItem.Text+"' and BusFrom='"+Ddfrom.SelectedItem.Text+"'";
        SqlCommand cmd = new SqlCommand(qry, sqlcon);
        sqlcon.Open();
        SqlDataAdapter sdr = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sdr.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        sqlcon.Close();

        Session["source"] = Ddfrom.SelectedItem;
        Session["destination"] = Ddto.SelectedItem;
        Session["journeydate"] = Calendar1.SelectedDate.ToString();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
        Calendar1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
        Button1.Enabled = true;
    }





    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Day.IsSelectable = false;
            e.Cell.ForeColor = System.Drawing.Color.Gray;
        }
    }
}