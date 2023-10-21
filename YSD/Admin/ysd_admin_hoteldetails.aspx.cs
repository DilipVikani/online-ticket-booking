using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class Admin_ysd_admin_hoteldetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("ysd_admin_login.aspx");
        }
        if (!IsPostBack)
        {
            fillgrid();
        }
      
    }
    
    protected void add_hotel(object sender, EventArgs e)
    {
        Response.Redirect("ysd_admin_hotel_add.aspx");

    }



    public void fillgrid()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from hotel", con);
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        show1.DataSource = ds;
        show1.DataBind();

    }
   
    //protected void lnkUpdate_Click(object sender, EventArgs e)
    //{
    //    RepeaterItem item = (sender as Button).Parent as RepeaterItem;
    //    int id = int.Parse((item.FindControl("lbl_id") as Label).Text);
    //    String hname = (item.FindControl("Textbox1") as TextBox).Text.Trim();
    //    String city = (item.FindControl("Textbox2") as TextBox).Text.Trim();
    //    String rate = (item.FindControl("Textbox3") as TextBox).Text.Trim();
    //    String  hln = (item.FindControl("Textbox4") as TextBox).Text.Trim();

    //    //connection
    //    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());
    //    con.Open();
    //    String upqry = "update hotel set hotel_name=@hname,rate=@rate,city=@city,helpline_no=@helpline_no where id=@id";
    //    SqlCommand cmd = new SqlCommand(upqry, con);
    //    cmd.Parameters.AddWithValue("@id", id);
    //    cmd.Parameters.AddWithValue("@hname", hname);
    //    cmd.Parameters.AddWithValue("@rate", rate);
    //    cmd.Parameters.AddWithValue("@city", city);
    //    cmd.Parameters.AddWithValue("@helpline_no", hln);
    //    int res = cmd.ExecuteNonQuery();
    //    if (res == 1)
    //    {
    //        Response.Write("<script>alert('Bus Information Updated ');window.location=('ysd_admin_hoteldetails.aspx');</script>");
    //        fillgrid();
    //    }
    //    else
    //    {
    //        Response.Write("<script>alert('Bus Information Not Updated ');window.location=('ysd_admin_hoteldetails.aspx');</script>");
    //    }
    //    con.Close();
    //}
    protected void lnkDelete_Click(object sender, EventArgs e)
    {
        Button btn = (sender as Button);
        string btn_id = btn.ID;
        if (btn.CommandName == "delete")
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ysd"].ToString());

            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            String sqr = "select hotel_name,image1,image2,image3,image4  FROM hotel where id='" + btn.CommandArgument + "'";
            SqlCommand cmd = new SqlCommand(sqr, con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["hnm"] = dr["hotel_name"].ToString();
                Session["img1"] = dr["image1"].ToString();
                Session["img2"] = dr["image2"].ToString();
                Session["img3"] = dr["image3"].ToString();
                Session["img4"] = dr["image4"].ToString();
            }
            dr.Close();
            cmd.Dispose();
            con.Close();

            if (Session["img1"] != null)
            {
                string Savepath = Server.MapPath("~/Admin/hotel_img");
                String temp = Session["img1"].ToString();
                File.Delete(Path.Combine(Savepath, temp));

            }

            if (Session["img2"] != null)
            {
                string Savepath = Server.MapPath("~/Admin/hotel_img");
                String temp = Session["img2"].ToString();
                File.Delete(Path.Combine(Savepath, temp));

            }
            if (Session["img3"] != null)
            {
                string Savepath = Server.MapPath("~/Admin/hotel_img");
                String temp = Session["img3"].ToString();
                File.Delete(Path.Combine(Savepath, temp));

            }

            if (Session["img4"] != null)
            {
                string Savepath = Server.MapPath("~/Admin/hotel_img");
                String temp = Session["img4"].ToString();
                File.Delete(Path.Combine(Savepath, temp));

            }
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            SqlCommand cmd2 = new SqlCommand("delete from hotel where id=@id", con);
            cmd2.Parameters.AddWithValue("@id", btn.CommandArgument);
            int res = cmd2.ExecuteNonQuery();
            if (res > 0)
            {
                fillgrid();
                Response.Write("<script>alert(' Hotel Deleted !..  ');window.location=('ysd_admin_hoteldetails.aspx');</script>");
                //Response.Write("Record delete");
                con.Close();
            }
            else
            {
                fillgrid();
                Response.Write("<script>alert(' Hotel Not  Deleted !.. Try Again..  ');window.location=('ysd_admin_hoteldetails.aspx');</script>");
                //Response.Write("Record not delete");
                con.Close();
            }
        }
    }
    //protected void lnkCancel_Click(object sender, EventArgs e)
    //{
    //    RepeaterItem item = (sender as Button).Parent as RepeaterItem;
    //    this.cancelElements(item, false);
    //}
    //private void cancelElements(RepeaterItem item, bool iscancel)
    //{
    //    //button
    //    item.FindControl("lnkEdit").Visible = !iscancel;
    //    item.FindControl("lnkDelete").Visible = !iscancel;
    //    item.FindControl("lnkUpdate").Visible = iscancel;
    //    item.FindControl("lnkCancel").Visible = iscancel;

    //    //labels
    //    item.FindControl("lbl_id").Visible = !iscancel;
       
    //    item.FindControl("Label1").Visible = !iscancel;
    //    item.FindControl("Label2").Visible = !iscancel;
    //    item.FindControl("Label3").Visible = !iscancel;
    //    item.FindControl("Label4").Visible = !iscancel;

    //    //textbox
    //    item.FindControl("txt_id").Visible = iscancel;
    //    item.FindControl("TextBox1").Visible = iscancel;
    //    item.FindControl("TextBox2").Visible = iscancel;
    //    item.FindControl("TextBox3").Visible = iscancel;
    //    item.FindControl("TextBox4").Visible = iscancel;
    //}
   


}
