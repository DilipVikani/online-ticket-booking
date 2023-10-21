<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_changepassword.aspx.cs" Inherits="Admin_ysd_admin_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div style="text-align:center">
                        <h2 class="page-header">-: Change Password :-</h2>
                            <br />
                            <br />
                    </div>
                        <div class="form-group">
                        <table style="margin-left:27%">
                            <tr>
                                <td><asp:TextBox ID="cpass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Current Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="required1" runat="server" ControlToValidate="cpass" ErrorMessage="Please Enter Current Password"></asp:RequiredFieldValidator></td></tr>
                            <tr>
                                <td><asp:TextBox ID="npass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter New Password"></asp:TextBox> 
                                <asp:RequiredFieldValidator ID="required2" runat="server" ControlToValidate="npass" ErrorMessage="Please Enter New Password"></asp:RequiredFieldValidator></td></tr>
                            <tr>
                                <td><asp:TextBox ID="cnpass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm New Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="required3" runat="server" ControlToValidate="cnpass" ErrorMessage="Please Enter Confirm New Password"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="compare" runat="server" ControlToCompare="npass" ControlToValidate="cnpass" ErrorMessage="Password Mismatch"></asp:CompareValidator></td></tr>     
                        </table>
                            <div >
                                <asp:Button ID="save" runat="server" class="btn btn-lg btn-primary" Text="Update" OnClick="save_Click" />
                            </div>
                        </div>    
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
</asp:Content>

