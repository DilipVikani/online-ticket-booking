using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class hotelpayment_hotelpay : System.Web.UI.Page
{
    public string h_name;
    public string ct;
    public string rate;
    public string hid;

    protected void Page_Load(object sender, EventArgs e)
    {
        String id = Session["id"].ToString();

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        String rq = "select * from hotel where id='" + id + "'";
        SqlCommand cmd = new SqlCommand(rq, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            h_name = sdr["hotel_name"].ToString();
            ct = sdr["city"].ToString();
            rate = sdr["rate"].ToString();
            hid = sdr["Id"].ToString();
            Session["hname"] = h_name.ToString();
            Session["city"] = ct.ToString();
            Session["rate"] = rate.ToString();
            Session["helpline"] = sdr["helpline_no"].ToString();
            Session["state"] = sdr["state"].ToString();
            Session["add"] = sdr["address"].ToString();
        }
        sdr.Close();
    }

    protected void confirm_Click(object sender, EventArgs e)
    {
        //Response.Write("<script>alert('Payment Successfully ');window.location=('/bookingprofile.aspx');</script>");
        //   String sid = Request.QueryString["Id"];
        
        String uid = "";
        String useremail = Session["user"].ToString();

        String chkindt = Session["checkinDate"].ToString();
        String chkoutdt = Session["checkoutDate"].ToString();

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
        String qry = "Insert into hotelbooking(hotel_name,city,rate,cardnm,cardnum,uid,chkin_date,chkout_date,hotel_id)values(@hotel_name,@city,@rate,@cardnm,@cardnum,@uid,@chkin_date,@chkout_date,@hotel_id)";
        //String upq = "update booking set cardnm=@cardnm,cardnum=@cardnum,emonth=@emonth,eyear=@eyear,cvv=@cvv where total='"+total+"'";
        //String qry = "Insert into booking(fullname,email,message)values(@cardnm,@cardnum,@eyear,@emonth,@cvv)";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@hotel_name", h_name);
        cmd.Parameters.AddWithValue("@city", ct);
        cmd.Parameters.AddWithValue("@rate", rate);
        cmd.Parameters.AddWithValue("@cardnm", cnm.Text);
        cmd.Parameters.AddWithValue("@cardnum", cnum.Text);
        cmd.Parameters.AddWithValue("@uid", uid);
        cmd.Parameters.AddWithValue("@chkin_date", chkindt);
        cmd.Parameters.AddWithValue("@chkout_date", chkoutdt);
        cmd.Parameters.AddWithValue("@hotel_id", hid);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {

            String qqq = "select Id from hotelbooking where hotel_name= '" + h_name + "' and city= '" + ct + "' and uid= '" + uid + "' and hotel_id='" + hid + "'";
            SqlCommand cmd4 = new SqlCommand(qqq, con);
            SqlDataReader sdr4 = cmd4.ExecuteReader();
            if (sdr4.Read())
            {
                Session["hbid"] = sdr4["Id"].ToString();
            }
            sdr4.Close();
            Response.Write("<script>alert('Payment Successfully ');window.location=('../ysd_hotel_bookconfirm.aspx');</script>");
        }
        else
        {
            Response.Write("<script>alert('Payment Not Successfully');window.location=('hotelpayment/hotelpay.aspx');</script>");
        }

    }
    
}