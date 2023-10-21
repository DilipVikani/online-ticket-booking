<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ysd_registration.aspx.cs" Inherits="ysd_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="css/style-l-r-form.css" type="text/css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
        <table class="col-md-6" aling="center"style="margin-left:20%">
            <tr>
                  <td colspan="11" align="center"><h1>Registration..</h1></td>
            </tr>
            <tr>
                
                <td colspan="8" >
                    <asp:TextBox ID="fname" class="in" runat="server" placeholder="Your First Name*"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" ControlToValidate="fname" runat="server" 
                         ErrorMessage="Enter First name.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                
                   
                </td>
            </tr>


             <tr>
                
                <td colspan="8" >
                    <asp:TextBox ID="lname" class="in" runat="server" placeholder="Your Last Name*"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator7" ControlToValidate="lname"
                          runat="server" ErrorMessage="Enter Last name.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                
                   
                </td>
            </tr>
             <tr>
                
                <td colspan="8" >
                    <asp:RadioButton ID="male" class="in custom-radio" runat="server" Text="Male" GroupName="gender" Checked="True"/>  
                    <asp:RadioButton ID="female" class="in custom-radio" runat="server" Text="Female" GroupName="gender"/>  
                 
                </td>
            </tr>
            <tr>
                
                <td colspan="8" >
                    <asp:TextBox ID="age" class="in" runat="server" placeholder="Enter Age*"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator8" ControlToValidate="age"
                          runat="server" ErrorMessage="Enter Age.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                
                   
                </td>
                </tr>
            <tr>
                
                <td colspan="8" >
                    <asp:TextBox ID="dob" class="in" runat="server" placeholder="Enter Birth Date Like 00/00/0000"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator9" ControlToValidate="dob"
                          runat="server" ErrorMessage="Enter Birth Date.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                
                   
                </td>
                </tr>
            <tr>
                
                <td colspan="8" >
                    <asp:TextBox ID="address" class="in" runat="server" placeholder="Your Address*"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator10" ControlToValidate="address"
                          runat="server" ErrorMessage="EnterAddress.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                
                   
                </td>
                </tr>
            
               <tr>

               
                <td colspan="8">
                    <asp:TextBox ID="email" runat="server" class="in" placeholder="Your E-mail*"></asp:TextBox>
                      <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" ControlToValidate="email"
                          runat="server" ErrorMessage="Enter proper format email" 
                           ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor ="#CC0000">

                           </asp:RequiredFieldValidator>

                
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" 
                  ErrorMessage="Invalid Email Format.." ForeColor="#CC0000"></asp:RegularExpressionValidator> 
             
                   
                </td>
            </tr>
            <tr>
               
                <td colspan="8">
                    <asp:TextBox ID="mo" runat="server" class="in" placeholder="Your Mobile Number*"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" ControlToValidate="mo" runat="server" 
                        ErrorMessage="Enter mobile no." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"  
                    ControlToValidate="mo" ErrorMessage="Invalid mobile number.."  
                       ValidationExpression="[0-9]{10}" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
               
                </td>
            </tr>
            <tr>
                
                <td colspan="8" >
                    <asp:TextBox ID="state" class="in" runat="server" placeholder="Your State*"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator11" ControlToValidate="state"
                          runat="server" ErrorMessage="Enter State.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                
                   
                </td>
                </tr>
            <tr>
                
                <td colspan="8" >
                    <asp:TextBox ID="city" runat="server" class="in" placeholder="Your City*"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2"
                          ControlToValidate="city" runat="server" ErrorMessage="Enter city.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
               
            </tr>
            <tr>
                
                <td colspan="8" >
                    <asp:TextBox ID="aadhaar" class="in" runat="server" placeholder="Your Aadhaar Number*"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator12" ControlToValidate="aadhaar"
                          runat="server" ErrorMessage="Enter Adhar Number.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                
                   
                </td>
                </tr>

            <tr>
                
                <td colspan="8">
                    <asp:TextBox ID="pass" runat="server" TextMode="Password" class="in" placeholder="Password*"></asp:TextBox>
                     <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator5" ControlToValidate="pass" runat="server" 
                        ErrorMessage="enter password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="rev1" runat="server" 
                ControlToValidate="pass"
                ErrorMessage="Enter proper password format"
                ValidationExpression=" ^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,20}$" ForeColor="#CC0000" />
                
                   </td>
            </tr>
            <tr>   
                <td colspan="8" >
                    <asp:TextBox ID="confpass" runat="server" TextMode="Password" class="in" placeholder="Confirm-Password*" ></asp:TextBox>
             <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator6" ControlToValidate="confpass" runat="server" 
                        ErrorMessage="enter confirm password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="confpass"
                ErrorMessage="Password must be same"
                ValidationExpression=" ^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,20}$" ForeColor="#CC0000" />
                     <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="pass"
                          ControlToValidate="confpass" ErrorMessage="Both Password must be same" ForeColor="#CC0000"></asp:CompareValidator>
               
                </td>
            </tr>
            <tr>
                
                <td align="center">
                    <asp:Button ID="submit" runat="server" class="btn" OnClick="submit_Click" Text="Registration"   />
                    </td>
                <td align="center"><a href="ysd_login.aspx">Login..</a></td>
            </tr>
            </table>

</table></asp:Content>