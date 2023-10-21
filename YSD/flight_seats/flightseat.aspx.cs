using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class flight_seats_flightseat : System.Web.UI.Page
{
    public string price;
    public string sid;
    public string seats;
    protected void Page_Load(object sender, EventArgs e)
    {
        removeseat();

        sid = Request.QueryString["Id"];
        Session["fid"] = sid.ToString();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        String rq = "select Id,FlightTo,FlightFrom,dep_time,arr_time,km,rate from FlightRoute where FlightTo='" + Session["destination"].ToString() + "' and FlightFrom='" + Session["source"].ToString() + "' ";
        //select * from buschedule bs,route r where bs.Id=" + sid + " and 
        SqlCommand cmd = new SqlCommand(rq, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            price = sdr["rate"].ToString();
            Session["time"] = sdr["dep_time"].ToString();
        }
        sdr.Close();
    }
    public void removeseat()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        String rq = "select seats,journeydate from flightbooking where journeydate='" + Session["journeydate"].ToString() + "' and source='" + Session["source"].ToString() + "' and destination='" + Session["destination"].ToString() + "'";
        SqlCommand cmd = new SqlCommand(rq, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            seats = sdr["seats"].ToString();
        }
        sdr.Close();
    }
    protected void chk_Click(object sender, EventArgs e)
    {

    }
    protected void pay_Click(object sender, EventArgs e)
    {
        Session["seats"] = hdd.Value;
        Session["total"] = tprc.Value;
        Response.Write("<script>alert('Message Send," + Session["seats"].ToString() + "," + Session["total"].ToString() + " ');window.location=('/flightpayment/flightpay.aspx?sid=" + sid + "');</script>");
        /*String source=Session["source"].ToString();
        String destination = Session["destination"].ToString();
        //String via="";
        String journeydate = Session["journeydate"].ToString();
        String seats = hdd.Value;
        String total = tprc.Value;
        string cons;
        cons = ConfigurationManager.ConnectionStrings["busticketbooking"].ToString();
        SqlConnection con = new SqlConnection(cons);
        con.Open();
        String qry = "Insert into booking(source,destination,via,journeydate,seats,total)values(@source,@destination,@via,@journeydate,@seats,@total)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@source", source);
        cmd.Parameters.AddWithValue("@destination", destination);
        cmd.Parameters.AddWithValue("@via", via);
        cmd.Parameters.AddWithValue("@journeydate", journeydate);
        cmd.Parameters.AddWithValue("@seats", seats);
        cmd.Parameters.AddWithValue("@total", total);
        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script>alert('Message Send ');window.location=('~/payment/pay.aspx');</script>");
        }
        else
        {
            Response.Write("<script>alert('Message Failed to Send');window.location=('seats/seat.aspx');</script>");
        }*/
    }
    protected void bb_Click(object sender, EventArgs e)
    {

    }
  
}