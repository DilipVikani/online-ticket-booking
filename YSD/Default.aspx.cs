using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       
        if (Session["logout"] == "logout")
            {
                Response.Write("<script language='javascript'>alert('Logout successfuly');</script>");
                //Response.Redirect("Default.aspx");
                Session.Remove("logout");
                Session.Remove("user");
            }
        
    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
      /*  SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ConnectionString);
        con.Open();
        string chkuser = "select count(*) from users where username ='" + txt_un.Text + "'";
        SqlCommand com = new SqlCommand(chkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string chkpass = "select pass from users where username ='" + txt_un.Text + "'";
            SqlCommand compass = new SqlCommand(chkpass, con);
            string password = compass.ExecuteScalar().ToString();
            if (password == txt_pass.Text)
            {
                Session["New"] = txt_un.Text;
                Response.Redirect("ysdlogin.aspx");
            }
            else
            {
                Response.Write("Password is not correct");
            }

        }
        else
        {
            Response.Write("Username is not correct");
        }*/

    }
}