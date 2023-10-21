using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ysd_admin_changepassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("ysd_admin_login.aspx");
        }

    }



    protected void save_Click(object sender, EventArgs e)
    {
        String dpass = "";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from admin where username='" + Session["admin"].ToString() + "'", con);
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {
            dpass = rd["password"].ToString();
        }
        rd.Close();
        if (dpass == cpass.Text)
        {
            if (npass.Text == cnpass.Text)
            {
                SqlCommand cmd1 = new SqlCommand("update admin set password=(@password) where username='" + Session["admin"].ToString() + "'  ", con);
                cmd1.Parameters.AddWithValue("@password", cnpass.Text);
                int res = cmd1.ExecuteNonQuery();
                if (res > 0)
                {
                    Response.Write("<script>alert('Your Password Successfully Updated');window.location=('Default1.aspx');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Password Not Updated');window.location=('ysd_admin_changepassword.aspx');</script>");
                }
            }
        }
        else
        {
            Response.Write("<script>alert('Current Password Does Not Match, Try again');window.location=('ysd_admin_changepassword.aspx');</script>");
        }
    }

}