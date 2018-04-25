<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ManageDriver.aspx.cs" Inherits="Admin_Managedriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="Form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="99px" Width="823px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="license" HeaderText="License" SortExpression="license" />
                <asp:TemplateField HeaderText="Options">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl='<%# "~/Admin/DriverCRUD/EditDriver.aspx?DriverId="+Eval("driverid") %>'>Edit</asp:HyperLink>
                        &nbsp;
                    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl='<%# "~/Admin/DriverCRUD/DetailDriver.aspx?DriverId="+Eval("driverid") %>'>Detail</asp:HyperLink>
                        &nbsp;
                    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl='<%# "~/Admin/DriverCRUD/DeleteDriver.aspx?DriverId="+Eval("driverid") %>'>Delete</asp:HyperLink>
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

        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/DriverCRUD/AddDriver.aspx">Add Driver</asp:HyperLink>
    </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentHeader">
    <ul>
        <li><a href="admin.aspx">Home</a> </li>
        <li><a href="ManageUser.aspx">User</a> </li>
        <li><a href="ManageBus.aspx">Bus</a> </li>
        <li><a href="ManageRoute.aspx">Route</a> </li>
        <li class="selected"><a href="ManageDriver.aspx">Driver</a> </li>
        <li><a href="Schedule.aspx">Schedule</a> </li>

    </ul>
</asp:Content>


