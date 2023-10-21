<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_hotel_update.aspx.cs" Inherits="Admin_ysd_admin_hotel_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
                          <h3>Hotel Information :-</h3>  
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table style="width:100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <br />
                                    
                                </thead>

                                  <tbody>
                                        <asp:Repeater ID="show1" runat="server">
                                        <ItemTemplate>
                                    <tr class="odd gradeX">
                                        <td>ID</td>
                                        <td><asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' ></asp:Label></td>
                                      </tr>
                                      <tr>  
                                            <td>HOTEL NAME</td>
                                             <td><asp:TextBox ID="txt_name" Text='<%#Eval("hotel_name") %>' runat="server"></asp:TextBox> </td>
                                       </tr>
                                        <tr> 
                                            <td>CITY</td>
                                            <td><asp:TextBox ID="txt_city" Text='<%#Eval("city") %>' runat="server"></asp:TextBox> </td>
                                        </tr>
                                        <tr>
                                            <td>STATE</td>
                                            <td><asp:TextBox ID="txt_state" Text='<%#Eval("state") %>' runat="server"></asp:TextBox> </td>
                                        </tr> 
                                        <tr>
                                             <td>ADDRESS</td>
                                            <td><asp:TextBox ID="txt_address" Text='<%#Eval("address") %>' runat="server"></asp:TextBox> </td>
                                                 </tr>
                                            <tr>
                                                <td>RATE</td>
                                                <td><asp:TextBox ID="txt_rate" Text='<%#Eval("rate") %>' runat="server"></asp:TextBox> </td>
                                                 </tr>
                                             <tr>
                                                <td>HELPLINE NO.</td>
                                                 <td><asp:TextBox ID="txt_helpline" Text='<%#Eval("helpline_no") %>' runat="server"></asp:TextBox> </td>
                                                 </tr>
                                             <tr>
                                                <td><asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image1") %>' Height="250px" Width="300px" /></td>
                                                 <td><asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image2") %>' Height="250px" Width="300px" /></td>
                                          
                                            </tr>
                                            <tr>
                                               
                                            </tr>
                                             <tr>
                                                
                                                 <td><asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image3") %>' Height="250px" Width="300px" /></td>
                                                 <td><asp:Image ID="Image4" runat="server" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image4") %>' Height="250px" Width="300px" /></td>
                                          
                                            </tr>
                                            <tr>
                                                <td><asp:HyperLink runat="server" NavigateUrl="ysd_admin_hoteldetails.aspx" CssClass="btn btn-info" Text="Back" ></asp:HyperLink></td>
                                                    <td><asp:Button ID="lnkUpdate"  runat="server" Text="Update Info" CommandArgument='<%#Eval("id") %>' CssClass="btn btn-info" OnClick="lnkUpdate_Click" />
                                                        <asp:HyperLink runat="server" NavigateUrl='<%#Eval("id","ysd_admin_hotel_image_update.aspx?id={0}") %>' CssClass="btn btn-info" Text="Update Images" />

                                                    </td>
                                            </tr>
                                     </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                             
                            </table>
                            <!-- /.table-responsive -->
                            
                         
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
      
</asp:Content>

