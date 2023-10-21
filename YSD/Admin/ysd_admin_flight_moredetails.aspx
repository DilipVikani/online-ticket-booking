<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_flight_moredetails.aspx.cs" Inherits="Admin_ysd_admin_flight_moredetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
       <h3 class=" top1"><u>Flight</u></h3> 
    <br />
  
   
       <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Flight Information :-

                        </div><br />
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
                                         <td><asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' ></asp:Label> </td>
                                             
                                     </tr>
                                      <tr>  
                                            <td>Flight TO NAME</td>
                                            <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("FlightTO") %>' ></asp:Label></td>                           
                                       </tr>
                                        <tr> 
                                            <td>FlightFrom NAME</td>
                                            <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("flightFrom") %>' ></asp:Label>  </td>
                                        </tr>
                                        <tr>
                                            <td>Arr Time</td>
                                            <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("arr_time") %>' ></asp:Label></td>
                                        </tr>                                         <tr>
                                             <td>Dep Time</td>
                                                <td><asp:Label ID="Label4" runat="server" Text='<%#Eval("Dep_time") %>' ></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td>KM</td>
                                                 <td><asp:Label ID="Label5" runat="server" Text='<%#Eval("km") %>' ></asp:Label></td>
                                          
                                            </tr>
                                             <tr>
                                                <td>RATE</td>
                                                 <td><asp:Label ID="Label6" runat="server" Text=' <%#Eval ("rate") %>' ></asp:Label></td>
                                          
                                            </tr>
                                            
                                            
                                     </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                             
                            </table>
                            <!-- /.table-responsive -->
                             <asp:HyperLink runat="server" NavigateUrl="ysd_admin_flight.aspx" CssClass="btn btn-info" Text="Back" />
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
</asp:Content>

