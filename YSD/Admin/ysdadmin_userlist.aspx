<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysdadmin_userlist.aspx.cs" Inherits="Admin_ysdadmin_userlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
      <h3 class=" top1"><u>USERS LIST</u></h3>
    <br />
    <br />
    <br />
        <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Information :-
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table style="width:100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>User Name</th>
                                        <th class="auto-style3">Email</th>
                                        <th class="auto-style4">City</th>
                                        <th class="auto-style5">Mobile No.</th>
                                        <th class="auto-style2">Action</th>
                                    </tr>
                                </thead>

                                  <tbody>
                                        <asp:Repeater ID="show1" runat="server">
                                        <ItemTemplate>
                                           
                                    <tr class="odd gradeX">
                                         <td><asp:Label ID="lbl_id" runat="server" Text='<%#Eval("id") %>' ></asp:Label>  </td>
                                         <td><asp:Label ID="Label5" runat="server" Text='<%#Eval("fname") %>' ></asp:Label></td>
                                        <td><asp:Label ID="Label1" runat="server" Text='<%#Eval("email") %>' ></asp:Label></td>
                                        <td><asp:Label ID="Label2" runat="server" Text='<%#Eval("mobile") %>' ></asp:Label></td>
                                        <td><asp:Label ID="Label3" runat="server" Text='<%#Eval("city") %>' ></asp:Label></td>
                                        
                                        <td>
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


