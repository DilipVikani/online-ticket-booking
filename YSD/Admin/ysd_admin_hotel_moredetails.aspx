<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_hotel_moredetails.aspx.cs" Inherits="Admin_ysd_admin_hotel_moredetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <!-- <h3 class=" top1"><u>HOTEL</u></h3> 
    <br />
   -->
   
       <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Hotel Information :-
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table style="width:100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                 
                                    
                                </thead>

                                  <tbody>
                                        <asp:Repeater ID="show1" runat="server">
                                        <ItemTemplate>
                                    <tr class="odd gradeX">
                                        <td>ID</td>
                                         <td><asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' ></asp:Label> </td>
                                             
                                     </tr>
                                      <tr>  
                                            <td>HOTEL NAME</td>
                                            <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("hotel_name") %>' ></asp:Label></td>                           
                                       </tr>
                                        <tr> 
                                            <td>CITY</td>
                                            <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("city") %>' ></asp:Label>  </td>
                                        </tr>
                                        <tr>
                                            <td>STATE</td>
                                            <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("state") %>' ></asp:Label></td>
                                        </tr>                                         <tr>
                                             <td>ADDRESS</td>
                                                <td><asp:Label ID="Label4" runat="server" Text='<%#Eval("address") %>' ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>RATE</td>
                                                 <td><asp:Label ID="Label5" runat="server" Text='<%#Eval("rate") %>' ></asp:Label></td>
                                          
                                            </tr>
                                             <tr>
                                                <td>HELPLINE NO.</td>
                                                 <td><asp:Label ID="Label6" runat="server" Text=' <%#Eval ("helpline_no") %>' ></asp:Label></td>
                                          
                                            </tr>
                                             <tr>
                                                <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image1") %>' Height="250px" Width="300px" /></td>
                                                 <td><asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image2") %>' Height="250px" Width="300px" /></td>
                                          
                                            </tr>
                                             <tr>
                                                
                                                 <td><asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image3") %>' Height="250px" Width="300px" /></td>
                                                 <td><asp:Image ID="Image4" runat="server" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image4") %>' Height="250px" Width="300px" /></td>
                                          
                                            </tr>
                                            
                                     </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                             
                            </table>
                            <!-- /.table-responsive -->
                             <asp:HyperLink runat="server" NavigateUrl="ysd_admin_hoteldetails.aspx" CssClass="btn btn-info" Text="Back" />
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
</asp:Content>

