using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;

public partial class ysd_hotel_details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == null)
        {
            Response.Redirect("ysd_login.aspx");
        }
        if(!IsPostBack)
        {
            fillgrid();
        }

        
 
    }
    public void fillgrid()
    {
        Session["id"] = Request.QueryString["Id"];
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from hotel where id ='" + Session["id"].ToString() + "'", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        show1.DataSource = ds;
        show1.DataBind();

    }
    protected void btn_book_Click(object sender, EventArgs e)
    {
        Response.Redirect("hotelpayment/hotelpay.aspx");
    }
}