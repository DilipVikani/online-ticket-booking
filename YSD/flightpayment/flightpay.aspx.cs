using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class flightpayment_flightpay : System.Web.UI.Page
{
    public String total = "";
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void confirm_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('Payment Successfully ');window.location=('/bookingprofile.aspx');</script>");
        //   String sid = Request.QueryString["Id"];
        String source = Session["source"].ToString();
        String destination = Session["destination"].ToString();
        String journeydate = Session["journeydate"].ToString();
        String seats = Session["seats"].ToString();
        String total = Session["total"].ToString();
        String scheduleid = Session["fid"].ToString();
        String uid = "";
        String useremail = Session["user"].ToString();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();



        //users
        String qq = "select Id from users where email= '" + useremail + "'";
        SqlCommand cmd2 = new SqlCommand(qq, con);
        SqlDataReader sdr3 = cmd2.ExecuteReader();
        if (sdr3.Read())
        {
            uid = sdr3["Id"].ToString();
        }
        sdr3.Close();
        //String qry= "insert into booking values ('"+ source +"','"+ destination +"','"+ journeydate +"','"+ seats +"','"+ total +"','"+ cnm.Text +"','"+ cnum.Text +"','"+ uid +"','"+ scheduleid +"')"
        String qry = "Insert into flightbooking(source,destination,journeydate,seats,total,cardnm,cardnum,uid,flightid)values(@source,@destination,@journeydate,@seats,@total,@cardnm,@cardnum,@uid,@flightid)";
        //String upq = "update booking set cardnm=@cardnm,cardnum=@cardnum,emonth=@emonth,eyear=@eyear,cvv=@cvv where total='"+total+"'";
        //String qry = "Insert into booking(fullname,email,message)values(@cardnm,@cardnum,@eyear,@emonth,@cvv)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@source", source);
        cmd.Parameters.AddWithValue("@destination", destination);
        cmd.Parameters.AddWithValue("@journeydate", journeydate);
        cmd.Parameters.AddWithValue("@seats", seats);
        cmd.Parameters.AddWithValue("@total", total);
        cmd.Parameters.AddWithValue("@cardnm", cnm.Text);
        cmd.Parameters.AddWithValue("@cardnum", cnum.Text);
        cmd.Parameters.AddWithValue("@uid", uid);
        cmd.Parameters.AddWithValue("@flightid", scheduleid);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            
            String qqq = "select bookid from flightbooking where source= '" + source + "' and destination= '" + destination + "' and uid= '" + uid + "' and flightid= '" + scheduleid + "' and seats='"+ seats +"'";
            SqlCommand cmd4 = new SqlCommand(qqq, con);
            SqlDataReader sdr4 = cmd4.ExecuteReader();
            if (sdr4.Read())
            {
                 Session["bookid"] = sdr4["bookid"].ToString();
            }
            sdr4.Close();
            Response.Write("<script>alert('Payment Successfully ');window.location=('../ysd_flight_ticketconfirm.aspx');</script>");
        }
        else
        {
            Response.Write("<script>alert('Payment Not Successfully');window.location=('flightpayment/flightpay.aspx');</script>");
        }
 
    }
    
 
}