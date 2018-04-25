<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ManageBus.aspx.cs" Inherits="Admin_ManageBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="bus_no" HeaderText="Bus No" />
            <asp:BoundField DataField="bus_type" HeaderText="Bus Type" />
            <asp:BoundField DataField="seat_capacity" HeaderText="Seat Capacity" />
            <asp:BoundField DataField="bus_name" HeaderText="Bus Name" />
            <asp:BoundField DataField="model_no" HeaderText="Model No" />
            <asp:TemplateField HeaderText="Option">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Admin/BusCRUD/EditBus.aspx?BusId="+Eval("busid") %>'>Edit</asp:HyperLink>&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Admin/BusCRUD/DetailBus.aspx?BusId="+Eval("busid") %>'>Detail</asp:HyperLink>&nbsp;
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/Admin/BusCRUD/DeleteBus.aspx?BusId="+Eval("busid") %>'>Delete</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/BusCRUD/AddBus.aspx">Add Bus</asp:HyperLink>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
     <ul>
        <li><a href="admin.aspx">Home</a> </li>
         <li><a href="ManageAdmin.aspx">Admin</a> </li>
        <li ><a href="ManageUser.aspx">User</a> </li>
        <li class="selected"><a href="ManageBus.aspx">Bus</a> </li>
        <li><a href="ManageRoute.aspx">Route</a> </li>
            <li><a href="ManageDriver.aspx">Driver</a> </li>
            <li><a href="Schedule.aspx">Schedule</a> </li>
        
    </ul>
</asp:Content>


