<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ManageRoute.aspx.cs" Inherits="Admin_ManageRoute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000px" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="from_des" HeaderText="From" />
            <asp:BoundField DataField="to_des" HeaderText="To" SortExpression="city" />
            <asp:BoundField DataField="departure_time" HeaderText="Departure Time" SortExpression="state" />
            <asp:BoundField DataField="fare" HeaderText="Fare" SortExpression="country" />
            <asp:TemplateField HeaderText="Option">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Admin/RouteCRUD/EditRoute.aspx?RouteId="+Eval("RouteId") %>'>Edit</asp:HyperLink>
                    &nbsp;<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Admin/RouteCRUD/DetailRoute.aspx?RouteId="+Eval("RouteId") %>'>Detail</asp:HyperLink>
                    &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/Admin/RouteCRUD/DeleteRoute.aspx?RouteId="+Eval("RouteId") %>'>Delete</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
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
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/RouteCRUD/AddRoute.aspx">Add Route</asp:HyperLink>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
     <ul>
        <li><a href="admin.aspx">Home</a> </li>
        <li ><a href="ManageUser.aspx">User</a> </li>
        <li><a href="ManageBus.aspx">Bus</a> </li>
        <li class="selected"><a href="ManageRoute.aspx">Route</a> </li>
            <li><a href="ManageDriver.aspx">Driver</a> </li>
            <li><a href="Schedule.aspx">Schedule</a> </li>
        
    </ul>
</asp:Content>

