using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;


public partial class ysd_registration : System.Web.UI.Page

{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;

    }



    protected void submit_Click(object sender, EventArgs e)
    {

        bool exists = false;
        string chechuser = "SELECT count(*) FROM users where email='" + email.Text + "'";
        SqlCommand cmd = new SqlCommand(chechuser, con);
        cmd.Parameters.AddWithValue("email", email.Text);
        exists = (int)cmd.ExecuteScalar() > 0;
        if (exists)
        {
            Response.Write("<script>alert(' user already exists.. ')</script>");
        }
        else
        {

            String fn = fname.Text;
            String ln = lname.Text;
            String e_mail = email.Text;
            String st = state.Text;
            String mob = mo.Text;
            String ct = city.Text;
            String db = dob.Text;
            String ag = age.Text;
            String adh = aadhaar.Text;
            String password = pass.Text;
            String add = address.Text;
            String gen= "";
            if(male.Checked)
            {
                gen = male.Text;
            }
            else
            {
                gen = female.Text;
            }

            cmd.CommandText = "insert into users values('" + fn + "','" + ln + "','" + gen + "','" + ag + "','" + db + "','" + add + "','" + ct + "','" + st + "','" + e_mail + "','" + mob + "','" + adh + "','" + password +"')";
            int x = cmd.ExecuteNonQuery();
            if (x > 0)
            {
                
                Response.Redirect("ysd_login.aspx");
                
            }
            else
            {
                Response.Write("<script>alert(' not registered ! try again . . . ')</script>");

            }

            
        }
    }
}