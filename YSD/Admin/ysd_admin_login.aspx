<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage1.master" AutoEventWireup="true" CodeFile="ysd_admin_login.aspx.cs" Inherits="Admin_ysd_admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/style-l-r-form.css" type="text/css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="col-md-5">
        <tr>
            <td colspan="6" align="center"><h1>Login</h1></td>
        </tr>
        <tr>
            <td  colspan="6" align="center">
                <asp:TextBox  class="in" ID="txt_un"  placeholder="Your E-mail*" runat="server" ></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" ControlToValidate="txt_un" runat="server" ErrorMessage="Enter name..."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
              <!--   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_un" 
                  ErrorMessage="Invalid Email Format" ForeColor="#CC0000"></asp:RegularExpressionValidator> -->
            </td>
        </tr>
        <tr>
            
            <td colspan="6" align="center">
                <asp:TextBox Class="in" ID="txt_pass" runat="server" placeholder=" Password*" TextMode="Password"></asp:TextBox>
            </td>
             </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" ControlToValidate="txt_pass" runat="server" ErrorMessage="Enter password..."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
             <!--  <asp:RegularExpressionValidator ID="rev1" runat="server" 
                ControlToValidate="txt_pass"
                ErrorMessage="Password must contain: Minimum 8 characters atleast 1 Alphabet and 1 Number"
                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ForeColor="#CC0000" /> -->
            </td>
        </tr>
        <tr>
           
            <td colspan="6" align="center">
                <asp:Button ID="btn_login" class="btn" runat="server" Text="Login" OnClick="btn_login_Click" />
            </td>
       </tr>
        <tr>
            <td colspan="6" align="center"><a href="#">Forgot Password?</a></td>
         </tr>
        </table>
</asp:Content>

