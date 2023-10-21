 <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ysd_hotel_details.aspx.cs" Inherits="ysd_hotel_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            height: 27px;
            text-align: center;
            width: 960px;
        }
        .auto-style9 {
            text-align: center;
            width: 960px;
        }
        .auto-style10 {
            width: 960px;
            text-align: center;
        }
        .auto-style11 {
            width: 261px;
        }
        .auto-style12 {
            height: 27px;
            width: 261px;
        }
        .auto-style16 {
            text-align: center;
            width: 960px;
            height: 116px;
        }
        .auto-style17 {
            width: 261px;
            height: 116px;
        }
        .auto-style18 {
            height: 116px;
        }
    </style>  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <asp:Repeater ID="show1" runat="server">
           <ItemTemplate>
    <table class="auto-style1">
        <tr>
            <td class="auto-style16">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Algerian" Font-Size="30" ForeColor="#FF99CC" Text="Hotel :"></asp:Label>
&nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Algerian" Font-Size="30" Font-Underline="True" ForeColor="#FF99CC" Text='<%#Eval("hotel_name") %>'></asp:Label>
            </td>
            <td class="auto-style17"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="20" Font-Strikeout="False" ForeColor="#FFCCFF" Text="Address  :"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" Font-Strikeout="False" ForeColor="White" Text='<%#Eval("address") %>'></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="20" Font-Strikeout="False" ForeColor="#FFCCFF" Text="City :"></asp:Label>
&nbsp;<asp:Label ID="Label5" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" Font-Strikeout="False" ForeColor="White" Text='<%#Eval("city") %>'></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="20" Font-Strikeout="False" ForeColor="#FFCCFF" Text="State :"></asp:Label>
&nbsp;<asp:Label ID="Label7" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" Font-Strikeout="False" ForeColor="White" Text='<%#Eval("state") %>'></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image1") %>' Width="350px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="#FF99CC" Text="Rate per Room(24 hour)* :"></asp:Label>
&nbsp;<asp:Label ID="Label12" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="White" Text='<%#Eval("rate") %>'></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="#FF99CC" Text="Helpline No. :"></asp:Label>
&nbsp;<asp:Label ID="Label13" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="White" Text='<%#Eval ("helpline_no") %>'></asp:Label> 
                <br />
                <br />
                <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="#FF99CC" Text="Rating :"></asp:Label>
&nbsp;<asp:Label ID="Label14" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="White" Text="7 star"></asp:Label>
            </td>
            <td class="auto-style11">&nbsp;</td>
            <td>
                <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image2") %>' Width="350px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label15" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="#FFCCFF" Text="Other Facilities :"></asp:Label>
&nbsp;<asp:Label ID="Label16" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="White" Text="Swimming pool, Gym, Beach View, 24hour free Wifi etc.."></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style11">
                <asp:Image ID="Image3" runat="server" Height="200px" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image3") %>' Width="350px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label17" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="#FFCCFF" Text="Select Room :"></asp:Label>
&nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label18" runat="server" Font-Names="Berlin Sans FB" Font-Size="17" ForeColor="White" Text="*select how many rooms you want to book.."></asp:Label>
                <br />
                <br />
                <br />
                <asp:Button ID="btn_book" runat="server" Font-Names="Berlin Sans FB" Font-Size="20" ForeColor="#CC3300" OnClick="btn_book_Click" Text="Book Now.." />
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style2">
                <asp:Image ID="Image4" runat="server" Height="200px" ImageUrl='<%# "~/Admin/hotel_img/" +Eval ("image4") %>' Width="350px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
               </ItemTemplate>
         </asp:Repeater>
  

    

</asp:Content>

