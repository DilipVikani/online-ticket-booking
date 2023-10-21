<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ysd_bus_home.aspx.cs" Inherits="_ysd_bus_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .auto-style1 {
            width: 333px;
            text-align: right;
        }
        .auto-style2 {
            width: 308px;
        }
        .auto-style3 {
            width: 333px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

    <table class="w-100">
        <tr>
            <td class="auto-style1" style="text-align: right">
                <asp:Label ID="Label1" runat="server" ForeColor="White" style="text-align: right" Text="To"></asp:Label>
            </td>
            <td class="auto-style2">
                
                <asp:DropDownList ID="Ddto" runat="server" DataTextField="BusTo" DataValueField="Id" Height="30px" Width="300px" >
                   
                   
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" ForeColor="White" style="text-align: right" Text="From"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="Ddfrom" runat="server" Height="30px" Width="300px" DataTextField="BusFrom" DataValueField="Id">
                    
                
                </asp:DropDownList>
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Date"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="300px"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="..." OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                    <asp:Calendar ID="Calendar1" runat="server" Visible="false" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="87px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px" OnDayRender="Calendar1_DayRender" >
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
                
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Search Bus" OnClick="Button1_Click" Enabled="false"/>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="987px" AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField DataField="BusTo" HeaderText="To" />
            <asp:BoundField DataField="BusFrom" HeaderText="From" />
            <asp:BoundField DataField="dep_time" HeaderText="Departure Time" />
            <asp:BoundField DataField="arr_time" HeaderText="Reach Time" />
            <asp:BoundField DataField="km" HeaderText="Distance(KM)" />
            
            <asp:TemplateField HeaderText="View" >
                 <ItemTemplate>
                     
                     <asp:HyperLink runat="server" NavigateUrl='<%# Eval("Id","seats/seats.aspx?Id={0}") %>' Text="View More">

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
    

    

    <br />
   
    

    </asp:Content>

