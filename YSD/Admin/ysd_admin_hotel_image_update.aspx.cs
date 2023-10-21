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
using System.ComponentModel;
public partial class Admin_ysd_admin_hotel_image_update : System.Web.UI.Page
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("ysd_admin_login.aspx");
        }

        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();     
        String id = Request.QueryString["id"];


        String sqr = "select hotel_name,image1,image2,image3,image4  FROM hotel where id='" + id + "'";
       SqlCommand    cmd = new SqlCommand(sqr, con);
       SqlDataReader dr =cmd.ExecuteReader();

       if(dr.Read())
       {
           Session["hnm"] = dr["hotel_name"].ToString();
           Session["img1"] = dr["image1"].ToString();
           Session["img2"] = dr["image2"].ToString();
           Session["img3"] = dr["image3"].ToString();
           Session["img4"] = dr["image4"].ToString();


           Image1.ImageUrl = "~/Admin/hotel_img/" + dr["image1"].ToString();
           Image2.ImageUrl = "~/Admin/hotel_img/" + dr["image2"].ToString();
           Image3.ImageUrl = "~/Admin/hotel_img/" + dr["image3"].ToString();
           Image4.ImageUrl = "~/Admin/hotel_img/" + dr["image4"].ToString();
          
       }
        dr.Close();
        cmd.Dispose();
        con.Close();
       
       //File.Delete(filePath);
    }
   

    public void  lnkUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ysd"].ToString());
        con.Open();
        String id = Request.QueryString["id"];

        if(FileUpload1 != null && FileUpload1.HasFile)
        {
            String hnm = Session["hnm"].ToString();
           
            string Savepath = Server.MapPath("~/Admin/hotel_img");
            String temp = Session["img1"].ToString();
            File.Delete(Path.Combine(Savepath,temp));
            //if (!Directory.Exists(Savepath))
            //{
            //    Directory.CreateDirectory(Savepath);
            //}
            string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Savepath + "\\" + hnm.Trim() + "201" + extension);
            string insertimg = "update hotel set image1=@image1 where id='" + id + "'";
            SqlCommand cmd2 = new SqlCommand(insertimg, con);
            // cmd2.Parameters.AddWithValue("@image1", hoid);
            cmd2.Parameters.AddWithValue("@image1", hnm.Trim() + "201" + extension);
            // cmd2.Parameters.AddWithValue("@extension", extension);
            cmd2.ExecuteNonQuery();
            //cmd2.ExecuteScalar();
            

        }

        if (FileUpload2 != null && FileUpload2.HasFile)
        {
            String hnm = Session["hnm"].ToString();

            string Savepath = Server.MapPath("~/Admin/hotel_img");
            String temp = Session["img2"].ToString();
            File.Delete(Path.Combine(Savepath, temp));
            //if (!Directory.Exists(Savepath))
            //{
            //    Directory.CreateDirectory(Savepath);
            //}
            string extension = Path.GetExtension(FileUpload2.PostedFile.FileName);
            FileUpload2.SaveAs(Savepath + "\\" + hnm.Trim() + "02" + extension);
            string insertimg = "update hotel set image2=@image2 where id='" + id + "'";
            SqlCommand cmd2 = new SqlCommand(insertimg, con);
            // cmd2.Parameters.AddWithValue("@image1", hoid);
            cmd2.Parameters.AddWithValue("@image2", hnm.Trim() + "02" + extension);
            // cmd2.Parameters.AddWithValue("@extension", extension);
            cmd2.ExecuteNonQuery();
            //cmd2.ExecuteScalar();


        }
        if (FileUpload3 != null && FileUpload3.HasFile)
        {
            String hnm = Session["hnm"].ToString();

            string Savepath = Server.MapPath("~/Admin/hotel_img");
            String temp = Session["img3"].ToString();
            File.Delete(Path.Combine(Savepath, temp));
            //if (!Directory.Exists(Savepath))
            //{
            //    Directory.CreateDirectory(Savepath);
            //}
            string extension = Path.GetExtension(FileUpload3.PostedFile.FileName);
            FileUpload3.SaveAs(Savepath + "\\" + hnm.Trim() + "03" + extension);
            string insertimg = "update hotel set image3=@image3 where id='" + id + "'";
            SqlCommand cmd2 = new SqlCommand(insertimg, con);
            // cmd2.Parameters.AddWithValue("@image3", hoid);
            cmd2.Parameters.AddWithValue("@image3", hnm.Trim() + "03" + extension);
            // cmd2.Parameters.AddWithValue("@extension", extension);
            cmd2.ExecuteNonQuery();
            //cmd2.ExecuteScalar();


        }

        if (FileUpload4 != null && FileUpload4.HasFile)
        {
            String hnm = Session["hnm"].ToString();

            string Savepath = Server.MapPath("~/Admin/hotel_img");
            String temp = Session["img4"].ToString();
            File.Delete(Path.Combine(Savepath, temp));
            //if (!Directory.Exists(Savepath))
            //{
            //    Directory.CreateDirectory(Savepath);
            //}
            string extension = Path.GetExtension(FileUpload4.PostedFile.FileName);
            FileUpload4.SaveAs(Savepath + "\\" + hnm.Trim() + "04" + extension);
            string insertimg = "update hotel set image4=@image4 where id='" + id + "'";
            SqlCommand cmd2 = new SqlCommand(insertimg, con);
            // cmd2.Parameters.AddWithValue("@image1", hoid);
            cmd2.Parameters.AddWithValue("@image4", hnm.Trim() + "04" + extension);
            // cmd2.Parameters.AddWithValue("@extension", extension);
            cmd2.ExecuteNonQuery();
            //cmd2.ExecuteScalar();


        }
        Response.Write("<script>alert(' Image Update Successfuly ..  ');window.location=('ysd_admin_hoteldetails.aspx');</script>");
               

      
    }
}