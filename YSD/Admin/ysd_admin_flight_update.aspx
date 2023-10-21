<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_flight_update.aspx.cs" Inherits="Admin_ysd_admin_flight_update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <h3 class=" top1"><u>FLIGHT</u></h3> 
    <br />
   
   
       <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          <h3>Flight Information :-</h3>  
                        </div>
                        <br />
                        <br />
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
                                        <td><asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' ></asp:Label></td>
                                      </tr>
                                      <tr>  
                                            <td>Flight To </td>
                                             <td><asp:TextBox ID="fto" Text='<%#Eval("FlightTo") %>' runat="server"></asp:TextBox> </td>
                                       </tr>
                                        <tr> 
                                            <td>FLight From </td>
                                            <td><asp:TextBox ID="ffrom" Text='<%#Eval("FlightFrom") %>' runat="server"></asp:TextBox> </td>
                                        </tr>
                                        <tr>
                                            <td>Dep Time</td>
                                            <td><asp:TextBox ID="deptime" Text='<%#Eval("dep_time") %>' runat="server"></asp:TextBox> </td>
                                        </tr> 
                                        <tr>
                                             <td>Arr Time</td>
                                            <td><asp:TextBox ID="arrtime" Text='<%#Eval("arr_time") %>' runat="server"></asp:TextBox> </td>
                                                 </tr>
                                            <tr>
                                                <td>KM</td>
                                                <td><asp:TextBox ID="km" Text='<%#Eval("km") %>' runat="server"></asp:TextBox> </td>
                                                 </tr>
                                             <tr>
                                                <td>RATE</td>
                                                 <td><asp:TextBox ID="rate" Text='<%#Eval("rate") %>' runat="server"></asp:TextBox> </td>
                                                 </tr>
                                            <tr>
                                                <td><asp:HyperLink runat="server" NavigateUrl="~/Admin/ysd_admin_flight.aspx" CssClass="btn btn-info" Text="Back" ></asp:HyperLink></td>
                                                    <td><asp:Button ID="lnkUpdate"  runat="server" Text="Update Info" CommandArgument='<%#Eval("id") %>' CssClass="btn btn-info" OnClick="lnkUpdate_Click" />
                                                       

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

