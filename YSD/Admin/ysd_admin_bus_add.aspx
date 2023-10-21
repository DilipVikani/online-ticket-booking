<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_bus_add.aspx.cs" Inherits="Admin_ysd_admin_bus_add" %>

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
 <h3 class=" top1"><u>BUS</u></h3>
    <br />
    <table class="w-100">
        <h6> Add Bus :- </h6>
        <tr>
            <td  class="auto-style5"><asp:TextBox ID="bto" runat="server" CssClass="form-control input-group-text" placeholder="Enter Bus To ."></asp:TextBox></td>
          </tr>
        <tr>
            <td class="auto-style6"><asp:TextBox ID="bfrom" runat="server" CssClass="form-control input-group-text" placeholder="Enter Bus From ."></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:TextBox ID="dep_time" TextMode="Time" runat="server" CssClass="form-control input-group-text" placeholder=" Enter Dep Time. "></asp:TextBox></td>
             </tr>
        <tr>
            <td class="auto-style6"><asp:TextBox ID="arr_time" TextMode="Time" runat="server" CssClass="form-control input-group-text" placeholder="Enter Arr Time."></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style5"><asp:TextBox ID="km" runat="server" CssClass="form-control input-group-text" placeholder="Enter KM."></asp:TextBox></td>
             </tr>
        <tr>
            <td class="auto-style6"><asp:TextBox ID="rate" runat="server" CssClass="form-control input-group-text" placeholder="Enter Rate."></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td class="text-left">&nbsp;</td>
        </tr>
        
       
        <tr>
            <td><asp:HyperLink ID="link" runat="server" CssClass="btn btn-dark"
         NavigateUrl="~/Admin/ysd_admin_busdetails.aspx" Text="Back" ></asp:HyperLink></td>
           <td>&nbsp;</td>>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Add Bus"
                 CssClass=" btn btn-info " OnClick="btn_save_Click"  />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table> 
    
   
            
<br />
</asp:Content>

