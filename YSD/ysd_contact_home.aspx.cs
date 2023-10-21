using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
public partial class ysd_contact_home : System.Web.UI.Page
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

    protected void contactus_click(object sender, EventArgs e)
    {
        String mobile = mo.Text;
        String eml = email.Text;
        String unm = uname.Text;
        String message =msg.Value;
        String notis = "unread";
        cmd.CommandText = "insert into contactus values('" + unm + "','" + eml + "','" + mobile + "','" + message + "','" + notis + "')";
        int x = cmd.ExecuteNonQuery();
        if (x > 0)
        {
            Response.Write("<script>alert('your message is send successfuly ..');</script>");
           

        }
        else
        {
            Response.Write("<script>alert('your message is not  send successfuly . try again.. !');</script>");

        }

    }


}

 
