<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_hoteldetails.aspx.cs" Inherits="Admin_ysd_admin_hoteldetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      
    <style type="text/css">
        .auto-style2 {
            width: 228px;
        }
        .auto-style3 {
            width: 38px;
        }
        .auto-style4 {
            width: 62px;
        }
        .auto-style5 {
            width: 46px;
        }
    </style>
      
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  Runat="Server">
    <h3 class=" top1"><u>HOTEL</u></h3>
    <br />
    <asp:Button runat="server" ID="btn1" CssClass=" btn-lg btn-danger"  Text="   Add  Hotel     " OnClick="add_hotel" />
    <br />
    <br />
    <br />
    <br />
 

       <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Hotel List :-
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table style="width:100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Hotel Name</th>
                                        <th class="auto-style3">City</th>
                                        <th class="auto-style4">Rate</th>
                                        <th class="auto-style5">Helpline No.</th>
                                        <th class="auto-style2">Action</th>
                                    </tr>
                                </thead>

                                  <tbody>
                                        <asp:Repeater ID="show1" runat="server">
                                        <ItemTemplate>
                                           
                                    <tr class="odd gradeX">
                                         <td><asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' ></asp:Label>

                                         
                                            <asp:TextBox ID="txt_id" runat="server" Text='<%#Eval("id") %>' Visible="false"></asp:TextBox>
                                        </td>
                                        <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("hotel_name") %>' ></asp:Label>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("hotel_name") %>' Visible="false"></asp:TextBox>
                                        </td>
                                        <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("city") %>' ></asp:Label>
                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("city") %>' Visible="false"></asp:TextBox>
                                        </td>
                                        <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("rate") %>' ></asp:Label>
                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("rate") %>' Visible="false"></asp:TextBox>
                                        </td>
                                        <td><asp:Label ID="Label4" runat="server" Text='<%#Eval("helpline_no") %>' ></asp:Label>
                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%#Eval("helpline_no") %>' Visible="false"></asp:TextBox>
                                        </td>
                                        <td>
                                           
                                             
                                            <asp:HyperLink runat="server" NavigateUrl='<%#Eval("id","ysd_admin_hotel_moredetails.aspx?id={0}") %>' CssClass="btn btn-info" Text="More" />
                                            <asp:HyperLink runat="server" NavigateUrl='<%#Eval("id","ysd_admin_hotel_update.aspx?id={0}") %>' CssClass="btn btn-info" Text="Edit" />
                                            <asp:Button ID="lnkDelete" CausesValidation="false" runat="server" Text="Delete" CommandArgument='<%#Eval("id") %>' CommandName="delete" OnClientClick="return confirm('Are you sure want to delete?')" CssClass="btn btn-danger" OnClick="lnkDelete_Click" />
                                           
                
                                        </td>
                                    </tr>
                                     </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                             
                            </table>
                            <!-- /.table-responsive -->
                            <asp:HyperLink runat="server" NavigateUrl="~/Admin/Default1.aspx" CssClass="btn btn-info" Text="Home" />
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>

</asp:Content>