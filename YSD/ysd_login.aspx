<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ysd_login.aspx.cs" Inherits="ysd_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="css/style-l-r-form.css" type="text/css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        
    <table align="center"class="col-md-5" style="margin-left:25%">
        <tr>
            <td colspan="6" align="center"><h1>Login</h1></td>
        </tr>
        <tr>
            <td  colspan="6" align="center">
                <asp:TextBox  class="in" ID="txt_email"  placeholder="Your E-mail*" runat="server" ></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" ControlToValidate="txt_email" runat="server" ErrorMessage="Enter name..."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
              <!--   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" 
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
                <asp:Button ID="btn_login" class="btn" runat="server" OnClick="btn_login_Click" Text="Login" />
            </td>
       </tr>
        <tr>
            <td colspan="6" align="center"><a href="#">Forgot Password?</a></td>
         </tr>
        <tr>
            <td colspan="6" align="center">Not Registered?  
			<a href="ysd_registration.aspx">Sign up </a> | <a href="Default.aspx"> Home</a></td>
        </tr>

    </table>

    


 

</asp:Content>

