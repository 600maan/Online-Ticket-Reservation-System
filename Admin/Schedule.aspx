<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Admin_Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 838px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
        <br />
        <br />
        <table class="auto-style1" id="tdview" runat="server">
            <tr>
                <td  class="auto-style2">
    <asp:GridView ID="gvschedule" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="gvschedule_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    <table id="tdmain" runat="server">
        <tr>
            <td>
                Date</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px" OnSelectionChanged="Calendar1_SelectionChanged">
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
                Route</td>
            <td>
                <asp:DropDownList ID="ddlroute" runat="server"
                    DataTextField="Column1" DataValueField="routeid">
                </asp:DropDownList>
                
            </td>
            <td>
                Bus</td>
            <td>
                <asp:DropDownList ID="ddlbus" runat="server" 
                    DataTextField="Column1" DataValueField="busid">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td colspan="6">
                <asp:Label ID="lblcalender" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnaddschedule" runat="server" onclick="Unnamed1_Click" 
        Text="Add Schedule" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btncancel" runat="server" PostBackUrl="~/Admin/admin.aspx" Text="Cancel" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnschedule" runat="server" Text="View Schedules" OnClick="btnschedule_Click" />
&nbsp;</form>
&nbsp;&nbsp;&nbsp; 
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <ul>
        <li><a href="admin.aspx">Home</a> </li>
        <li ><a href="ManageUser.aspx">User</a> </li>
        <li><a href="ManageBus.aspx">Bus</a> </li>
        <li><a href="ManageRoute.aspx">Route</a> </li>
            <li><a href="ManageDriver.aspx">Driver</a> </li>
            <li class="selected"><a href="Schedule.aspx">Schedule</a> </li>
        
    </ul>
</asp:Content>

