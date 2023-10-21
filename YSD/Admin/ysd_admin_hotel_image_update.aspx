<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_hotel_image_update.aspx.cs" Inherits="Admin_ysd_admin_hotel_image_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .btn{
            margin-left:50px;
           
        }
        .img{
            
            
            margin-bottom:20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <h3>Update Hotel Images :-</h3>  
    <br />
   
    <asp:Image CssClass="img" ID="Image1"  runat="server"   Height="250px" Width="300px" />

    <asp:FileUpload CssClass="btn btn-dark" ID="FileUpload1" runat="server" />
    <br />
    <asp:Image  CssClass="img" ID="Image2"  runat="server"   Height="250px" Width="300px" />
    <asp:FileUpload   CssClass="btn btn-dark" ID="FileUpload2" runat="server" />
    <br />
    <asp:Image CssClass="img" ID="Image3"  runat="server"   Height="250px" Width="300px" />
    <asp:FileUpload  CssClass="btn btn-dark" ID="FileUpload3" runat="server" />
    <br />
    <asp:Image CssClass="img" ID="Image4"  runat="server"   Height="250px" Width="300px" />
    <asp:FileUpload  CssClass="btn btn-dark" ID="FileUpload4" runat="server" />

    <br />
   <table style="width:100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
       
       <tr>
           <td><asp:HyperLink runat="server" NavigateUrl="~/Admin/ysd_admin_hoteldetails.aspx" CssClass="btn btn-info" Text="Back" ></asp:HyperLink></td>
           <td><asp:Button ID="lnkUpdate"  runat="server" Text="Update Images" CssClass="btn btn-info" OnClick="lnkUpdate_Click" /> </td>
          
       </tr>

   </table>
</asp:Content>

