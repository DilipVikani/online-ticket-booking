using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ysd_hotel_bookconfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label6.Text = Session["fname"].ToString();
        Label8.Text = Session["lname"].ToString();
        Label12.Text = Session["email"].ToString();
        Label10.Text = Session["mobile"].ToString();
        Label14.Text = Session["aadhaar"].ToString();
        Label4.Text = Session["hbid"].ToString();
        Label28.Text = Session["helpline"].ToString();
        Label16.Text = Session["hname"].ToString();
        Label30.Text = Session["state"].ToString();
        Label18.Text = Session["city"].ToString();
        Label20.Text = Session["add"].ToString();
        Label22.Text = Session["checkinDate"].ToString();
        Label24.Text = Session["checkoutDate"].ToString();
        Label26.Text = Session["rate"].ToString();


    }
}