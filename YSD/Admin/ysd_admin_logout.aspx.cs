using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ysd_admin_logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Remove("admin");
        Session.Clear();
        Session.Abandon();
        Response.Write("<script>alert(' Logout Successfuly !..  ');window.location=('Default1.aspx');</script>");
    
    }
}