using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class Admin_ysd_admin_hotel_add : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("ysd_admin_login.aspx");
        }
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        String h_name = hotel_name.Text;
        String stat = state.Text;
        String ct = city.Text;
        String add = address.Text;
        String h_rate = rate.Text;
        String h_no = help_no.Text;


        cmd.CommandText = "insert into hotel values('" + h_name + "','" + stat + "','" + ct + "','" + add + "','" + h_rate + "','" + h_no + "',NULL,NULL,NULL,NULL)";
        int x = cmd.ExecuteNonQuery();


        if (x > 0)
        {
           
                        SqlCommand cmd3 = new SqlCommand("select id  FROM hotel where hotel_name='"+ hotel_name.Text+"'", con);


                        int hoid = Convert.ToInt32(cmd3.ExecuteScalar().ToString());
        
                        if (fluimg1.HasFile)
                        {
                            string Savepath = Server.MapPath("~/Admin/hotel_img") ;
                            //if (!Directory.Exists(Savepath))
                            //{
                            //    Directory.CreateDirectory(Savepath);
                            //}
                            string extension = Path.GetExtension(fluimg1.PostedFile.FileName);  
                            fluimg1.SaveAs(Savepath + "\\" + hotel_name.Text.ToString().Trim() + "01" + extension);
                            string insertimg = "update hotel set image1=@image1 where id='"+hoid+"'";
                            SqlCommand cmd2 = new SqlCommand(insertimg, con);
                           // cmd2.Parameters.AddWithValue("@image1", hoid);
                            cmd2.Parameters.AddWithValue("@image1", hotel_name.Text.ToString().Trim() + "01" + extension);
                            // cmd2.Parameters.AddWithValue("@extension", extension);
                            cmd2.ExecuteNonQuery();
                        

                        }

                        if (fluimg2.HasFile)
                        {
                            string Savepath = Server.MapPath("~/Admin/hotel_img");
                            //if (!Directory.Exists(Savepath))
                            //{
                            //    Directory.CreateDirectory(Savepath);
                            //}
                            string extension = Path.GetExtension(fluimg2.PostedFile.FileName);
                            fluimg2.SaveAs(Savepath + "\\" + hotel_name.Text.ToString().Trim() + "02" + extension);
                            string insertimg = "update hotel set image2=@image2 where id='" + hoid + "'";
                            SqlCommand cmd2 = new SqlCommand(insertimg, con);
                           // cmd2.Parameters.AddWithValue("@hid", hoid);
                            cmd2.Parameters.AddWithValue("@image2", hotel_name.Text.ToString().Trim() + "02" + extension);
                            // cmd2.Parameters.AddWithValue("@extension", extension);
                            cmd2.ExecuteNonQuery();



                        }
                        if (fluimg3.HasFile)
                        {
                            string Savepath = Server.MapPath("~/Admin/hotel_img");
                            //if (!Directory.Exists(Savepath))
                            //{
                            //    Directory.CreateDirectory(Savepath);
                            //}
                            string extension = Path.GetExtension(fluimg3.PostedFile.FileName);
                            fluimg3.SaveAs(Savepath + "\\" + hotel_name.Text.ToString().Trim() + "03" + extension);
                            string insertimg = "update hotel set image3=@image3 where id='" + hoid + "'";
                            SqlCommand cmd2 = new SqlCommand(insertimg, con);
                            //cmd2.Parameters.AddWithValue("@hid", hoid);
                            cmd2.Parameters.AddWithValue("@image3", hotel_name.Text.ToString().Trim() + "03" + extension);
                            // cmd2.Parameters.AddWithValue("@extension", extension);
                            cmd2.ExecuteNonQuery();


                        }

                        if (fluimg4.HasFile)
                        {
                            string Savepath = Server.MapPath("~/Admin/hotel_img");
                            //if (!Directory.Exists(Savepath))
                            //{
                            //Directory.CreateDirectory(Savepath);
                            //}
                            string extension = Path.GetExtension(fluimg4.PostedFile.FileName);
                            fluimg4.SaveAs(Savepath + "\\" + hotel_name.Text.ToString().Trim() + "04" + extension);
                            string insertimg = "update hotel set image4=@image4 where id='" + hoid + "'";
                            SqlCommand cmd2 = new SqlCommand(insertimg, con);
                           // cmd2.Parameters.AddWithValue("@hid", hoid);
                            cmd2.Parameters.AddWithValue("@image4", hotel_name.Text.ToString().Trim() + "04" + extension);
                            // cmd2.Parameters.AddWithValue("@extension", extension);
                            cmd2.ExecuteNonQuery();





                        Response.Write("<script>alert('Hotel  added! '); window.location=('ysd_admin_hoteldetails.aspx');</script>");



                        }
              
            //Response.Redirect("ysd_admin_hoteldetails.aspx");

        }
        else
        {
            Response.Write("<script>alert('Hotel not added! try agin.');</script>");

        }
       
        con.Close();
    }
}