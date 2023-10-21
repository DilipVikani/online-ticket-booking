<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ysd_hotel_bookconfirm.aspx.cs" Inherits="ysd_hotel_bookconfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 237px;
        }
        .auto-style7 {
            width: 237px;
            text-align: center;
        }
        .auto-style19 {
            width: 245px;
        }
        .auto-style20 {
            width: 245px;
            text-align: center;
        }
        .auto-style21 {
            width: 232px;
        }
        .auto-style22 {
            width: 232px;
            text-align: center;
        }
        .auto-style26 {
            width: 242px;
        }
        .auto-style27 {
            width: 242px;
            text-align: center;
        }
        .ticketconfirm{
            border:2px solid white;
        }
    </style>
    <script>
        function printpage() {
            var getpanel = document.getElementById("<%= Panel1.ClientID%>");
            var MainWindow = window.open('', '', 'height=500,width=800');
            MainWindow.document.write('<html><head><title>Print Page</title>');
            MainWindow.document.write('</head><body>');
            MainWindow.document.write(getpanel.innerHTML);
            MainWindow.document.write('</body></html>');
            MainWindow.document.close();
            setTimeout(function () {
                MainWindow.print();
            }, 500);
            return false;

        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table class="auto-style1">
        <tr>
            <td style="text-align: center">
              
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Book Antiqua" Font-Size="XX-Large" ForeColor="#FFCCFF" Text="Print Recipt Now!!" style="padding-left:10px" Font-Underline="True"></asp:Label>
            </td>
        </tr>
    </table>
    
   <br />
    <asp:Panel ID="Panel1" runat="server">
    <div class="ticketconfirm">
        
    <table class="auto-style1"  style="border-bottom:1px solid white">
        <tr>
            <td style="text-align: center">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/ysdlogo.jpg" />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Bell MT" Font-Size="X-Large" ForeColor="#CC3300" Text="YSD HOTEL BOOKING" Font-Underline="True"></asp:Label>
            </td>
        </tr>
    </table>
    
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label3" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Book ID   :" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label4" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label15" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Hotel Name" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label16" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label5" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="FirstName" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label6" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label29" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="State"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label30" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label7" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="LastName" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label8" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="City"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label9" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Mobile No." Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label10" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Address"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label11" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Email ID" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label12" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Check In Date"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label22" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label13" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Aadhaar No." Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label14" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Check Out Date"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label24" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label27" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Helpline No."></asp:Label>
            </td>
            <td class="auto-style22">
                <asp:Label ID="Label28" runat="server" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:Label ID="Label25" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White" Text="Total Rate"></asp:Label>
            </td>
            <td class="auto-style20">
                <asp:Label ID="Label26" runat="server" Font-Bold="True" Font-Names="Berlin Sans FB Demi" Font-Size="Large" ForeColor="White"></asp:Label>
            </td>
        </tr>
     </asp:Panel>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style11"></td>
            <td class="auto-style12"></td>
            <td class="auto-style18"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style19" style="text-align: center">
                <asp:Button ID="btn_print" runat="server" BackColor="White" Font-Bold="True" Font-Italic="False" Font-Names="Berlin Sans FB Demi" ForeColor="#CC3300" Text="Print" OnClientClick="return printpage();"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
    </table>
    
    </div>
    <br />
</asp:Content>

