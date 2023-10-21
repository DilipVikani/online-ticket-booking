using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ysd_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("user");
        if(Session["user"]== null)
        {
            Session["logout"] = "logout";
            //Response.Write("<script language='javascript'>alert('hiii');</script>");
            Response.Redirect("Default.aspx");
            
        }
        else
        {
            Response.Write("logout is faild ! pleas try again ...");

        }

    }
}