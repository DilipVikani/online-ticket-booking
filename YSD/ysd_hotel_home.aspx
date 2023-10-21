<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ysd_hotel_home.aspx.cs" Inherits="ysd_hotel_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .text-sm-right {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table class="auto-style1">
        <tr>
            <td style="text-align: right">
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="City:"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:DropDownList ID="ddcity" runat="server" DataTextField="city" DataValueField="Id">
                </asp:DropDownList>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Check-In:" ForeColor="White"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txt_in" runat="server" Width="202px" Enabled="False"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:Button ID="cal_in" runat="server" Text="..." OnClick="cal_in_Click"/>
            </td>
            <td style="text-align: right">
                <asp:Label ID="Label3" runat="server" Text="Check-Out:" ForeColor="White"></asp:Label>
            </td>
            <td style="text-align: left">
                <asp:TextBox ID="txt_out" runat="server" Width="202px" Enabled="False"></asp:TextBox>
            </td>
            <td style="text-align: left">
                <asp:Button ID="cal_out" runat="server" Text="..." Enabled="False" OnClick="cal_out_Click" />
            </td>
            <td>
                &nbsp;</td>
            <td style="text-align: center">
                <asp:Button ID="btn_search" runat="server" Text="Search" OnClick="btn_search_Click" Enabled="False" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="text-align: center">
                <asp:Calendar ID="Calendar1" runat="server" Height="190px" Visible="False" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="text-align: center">
                <asp:Calendar ID="Calendar2" runat="server" Height="190px" Visible="False" Width="350px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth" OnSelectionChanged="Calendar2_SelectionChanged">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    
        <br />
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="987px" AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField DataField="hotel_name" HeaderText="Hotel Name" />
            <asp:BoundField DataField="state" HeaderText="State" />
            <asp:BoundField DataField="city" HeaderText="City" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="helpline_no" HeaderText="HelpLine No." />
            
            <asp:TemplateField HeaderText="View" >
                 <ItemTemplate>
                     
                     <asp:HyperLink runat="server" NavigateUrl='<%# Eval("Id","~/ysd_hotel_details.aspx?Id={0}") %>' Text="View More">

                     </asp:HyperLink>
                 </ItemTemplate>
                 <ControlStyle Font-Names="Berlin Sans FB Demi" ForeColor="Blue" />
                 <ItemStyle Font-Names="Berlin Sans FB Demi" />
             </asp:TemplateField>
            
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
                </td>
            </tr>
        </table>
    

</asp:Content>

