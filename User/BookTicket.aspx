<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="BookTicket.aspx.cs" Inherits="User_BookTicket" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
            text-decoration: underline;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            text-decoration: underline;
        }
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server"><table align="center">
        <tr>
            <td colspan="3" style="text-align: center">
                <span class="style1">Book Ticket</span><br class="style3" />
            </td>
        </tr>
        <tr>
            <td>
                Balance</td>
            <td>
                <asp:Label ID="lblbalance" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblerrorbalance" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Travelling Date</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" 
                    onselectionchanged="Calendar1_SelectionChanged" autopostback=true>
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td>
                <asp:Label ID="lblcalendar" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Route</td>
            <td>
                <asp:DropDownList ID="ddlroute" runat="server" onselectedindexchanged="ddlroute_SelectedIndexChanged" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="select s.routeid,r.from_des+'-'+r.to_des from tbl_route as r,tbl_schedule as s where s.travelling_date=@tvdate and r.routeid=s.routeid;" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>">
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Departure Time</td>
            <td>
                <asp:Label ID="lbltime" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Ticket Price</td>
            <td class="style2">
                <asp:Label ID="lblticketprice" runat="server"></asp:Label>
            </td>
            <td class="style2">
            </td>
        </tr>
        <tr>
            <td>Seat Number</td>
            <td>
                <asp:DropDownList ID="ddlseat" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btngenerate" runat="server" Text="Generate Ticket" 
                    onclick="btngenerate_Click" />
            </td>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                    PostBackUrl="~/User/user.aspx" onclick="btncancel_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <ul style="padding:10px">
        <li><a href="user.aspx">Home</a> </li>
        <li class="selected"><a href="BookTicket.aspx">Book Ticket</a> </li>
        <li><a href="ViewHistory.aspx">View History</a> </li>
    </ul>
    
</asp:Content>


