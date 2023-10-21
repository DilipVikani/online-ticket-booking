<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_hotel_add.aspx.cs" Inherits="Admin_ysd_admin_hotel_add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
       <style type="text/css">
        .auto-style2 {
            width: 43px;
        }
        .auto-style3 {
            width: 41px;
        }
        .auto-style4 {
               text-align: right;
               width: 373px;
           }
        .top1{
            
            margin-top:-60px;
        }
           .auto-style5 {
               width: 373px;
           }
           .auto-style6 {
               text-align: left;
               width: 373px;
           }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
 <h3 class=" top1"><u>HOTEL</u></h3>
    <br />
    <table class="w-100">
        <h6> Add Hotel :- </h6>
        <tr>
            <td  class="auto-style5"><asp:TextBox ID="hotel_name" runat="server" CssClass="form-control input-group-text" placeholder="Enter Hotel Name."></asp:TextBox></td>
          </tr>
        <tr>
            <td class="auto-style6"><asp:TextBox ID="state" runat="server" CssClass="form-control input-group-text" placeholder="Enter Sate."></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:TextBox ID="city" runat="server" CssClass="form-control input-group-text" placeholder=" Enter City. "></asp:TextBox></td>
             </tr>
        <tr>
            <td class="auto-style6"><asp:TextBox ID="address" runat="server" CssClass="form-control input-group-text" placeholder="Enter Address."></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:TextBox ID="rate" runat="server" CssClass="form-control input-group-text" placeholder="Enter Rate."></asp:TextBox></td>
             </tr>
        <tr>
            <td class="auto-style6"><asp:TextBox ID="help_no" runat="server" CssClass="form-control input-group-text" placeholder="Enter HelpLine No."></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="text-left">&nbsp;</td>
        </tr>
        
        <tr>
            <td class="auto-style4">  <asp:Label ID="Label7" runat="server" CssClass=" text-danger " Text="SELECT  IMAGE'S FOR  HOTEL..."></asp:Label>

            </td>
            </tr>
        <tr>
            <td class="btn-dark ">
                 <asp:FileUpload ID="fluimg1" runat="server"   />
            </td>
           <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
             <td class="btn-dark ">
                 <asp:FileUpload ID="fluimg2" runat="server" />
            </td>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td class="btn-dark">
                 <asp:FileUpload ID="fluimg3" runat="server" />
             </td>
            <td  ">
                 &nbsp;</td>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
              <td class="btn-dark">
                 <asp:FileUpload ID="fluimg4" runat="server"  />
              </td>
            <td >
                 &nbsp;</td>
            <td >&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
              <td >&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
         <tr>
             <td >&nbsp;</td>

            <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
        </tr>
        <tr>
            <td><asp:HyperLink ID="link" runat="server" CssClass="btn btn-dark"
         NavigateUrl="~/Admin/ysd_admin_hoteldetails.aspx" Text="Back" ></asp:HyperLink></td>
           <td>&nbsp;</td>>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add Hotel" CssClass=" btn btn-info " OnClick="btn_save_Click"  />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table> 
    
   
            
<br />
</asp:Content>

