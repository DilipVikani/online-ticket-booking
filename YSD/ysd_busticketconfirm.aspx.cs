using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ysd_busticketconfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label4.Text = Session["busbookid"].ToString();
        Label6.Text = Session["fname"].ToString();
        Label8.Text = Session["lname"].ToString();
        Label12.Text = Session["email"].ToString();
        Label10.Text = Session["mobile"].ToString();
        Label14.Text = Session["aadhaar"].ToString();
        Label16.Text = Session["source"].ToString();
        Label18.Text = Session["destination"].ToString();
        Label20.Text = Session["journeydate"].ToString();
        Label22.Text = Session["seats"].ToString();
        Label24.Text = Session["bustime"].ToString();
        Label26.Text = Session["total"].ToString();
    }

}