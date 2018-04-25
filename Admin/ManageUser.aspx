<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="Minor_Project_Admin_ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="1000px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:TemplateField HeaderText="Option">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Admin/UserCRUD/EditUser.aspx?UserId="+Eval("UserId") %>'>Edit</asp:HyperLink> &nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "~/Admin/UserCRUD/DetailUser.aspx?UserId="+Eval("UserId") %>'>Detail</asp:HyperLink>&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "~/Admin/UserCRUD/DeleteUser.aspx?UserId="+Eval("UserId") %>'>Delete</asp:HyperLink>
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
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Admin/UserCRUD/AddUser.aspx">Add User</asp:HyperLink>
    </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentHeader">
    <ul>
        <li><a href="admin.aspx">Home</a> </li>
        <li class="selected"><a href="ManageUser.aspx">User</a> </li>
        <li><a href="ManageBus.aspx">Bus</a> </li>
        <li><a href="ManageRoute.aspx">Route</a> </li>
        <li><a href="ManageDriver.aspx">Driver</a> </li>
        <li><a href="Schedule.aspx">Schedule</a> </li>

    </ul>
</asp:Content>


