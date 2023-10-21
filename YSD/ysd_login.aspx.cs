using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

public partial class ysd_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Write("YOUR LOGIN");
            Response.Redirect("Default.aspx");
        }
        else
        {
           
        }
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ConnectionString);
        con.Open();
        string chkuser = "select * from users where email ='" + txt_email.Text + "'and pass='"+txt_pass.Text+"'";
        SqlCommand com = new SqlCommand(chkuser, con);
        SqlDataReader sdr = com.ExecuteReader();
        
        if(sdr.Read())
        {

            Session["fname"] = sdr["fname"].ToString();
            Session["lname"] = sdr["lname"].ToString();
            Session["email"] = sdr["email"].ToString();
            Session["mobile"] = sdr["mobile"].ToString();
            Session["aadhaar"] = sdr["aadhaar"].ToString();
       
            Session["user"] = txt_email.Text;

            Response.Redirect("Default.aspx");

        }
        else
        {
            Response.Write("<script>alert('Email & Password is wrong ! ')</script>");
        }
        /*int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string chkpass = "select pass from users where username ='" + txt_un.Text + "'";
            SqlCommand compass = new SqlCommand(chkpass, con);
            string password = compass.ExecuteScalar().ToString();
            if (password == txt_pass.Text)
            {
                Session["user"] = txt_un.Text;

                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("Password is not correct");
            }

        }
        else
        {
            Response.Write("Username is not correct");
        } */

    }
}