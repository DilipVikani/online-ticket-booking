<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ysd_contact_home.aspx.cs" Inherits="ysd_contact_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
<style>
    .top{
        margin-top:7%;
        margin-bottom:10%;
       
    }
    .btn2{
        width:50%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="col-lg-12 top">  
          
               <div class="row">  
                    <div class="col-md-6">  
                         <div class="form-group"> 
                         <asp:TextBox ID="uname" class="form-control" runat="server" placeholder="Your Name*"></asp:TextBox>
                         <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" ControlToValidate="uname" runat="server" ErrorMessage="Enter name.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                          <p class="help-block text-danger"></p> 
                 
                         </div>  
                         <div class="form-group">  
                             <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Your E-mail*"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator4" ControlToValidate="email"
                          runat="server" ErrorMessage="Enter proper format email" 
                           ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor ="#CC0000">

                           </asp:RequiredFieldValidator> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                              ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" 
                              ErrorMessage="Invalid Email Format.." ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                              <p class="help-block text-danger"></p>  
                         </div>  
                         <div class="form-group">  
                               <asp:TextBox ID="mo" runat="server" class="form-control" placeholder="Your Mobile Number*"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator3" ControlToValidate="mo" runat="server" 
                        ErrorMessage="Enter mobile no." ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"  
                    ControlToValidate="mo" ErrorMessage="Invalid mobile number.."  
                       ValidationExpression="[0-9]{10}" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                              <p class="help-block text-danger"></p>  
                         </div>  
                    </div>  
                    <div class="col-md-6">  
                         <div class="form-group"> 
                             
                                  
                         <textarea name="msg" rows="3" cols="20" ID="msg" class="form-control" runat="server" placeholder="Your Message*"/>
                         <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator2" ControlToValidate="msg" runat="server" ErrorMessage="Please enter a message.."
                          ForeColor="#CC0000"></asp:RequiredFieldValidator>
                          <p class="help-block text-danger"></p>

                         </div>  
                    <div class="col-lg-12"></div>  
                    <div class=" text-center btn2">  
                         <div id="success"></div>  
                         <asp:Button ID="send" runat="server" class="btn btn-dark" OnClick="contactus_click" Text="Send Message"   />
                            
                    </div>  
               </div>  
         
     </div>  
</div>  


</asp:Content>

