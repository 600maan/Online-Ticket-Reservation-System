<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="User_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentHeader" Runat="Server">
    <ul>
        <li><a href="User.aspx">Home</a> </li>
        <li><a href="BookTicket.aspx">Book Ticket</a> </li>
        <li><a href="ViewHistory.aspx">View History</a> </li>
        <li class="selected"><a href="ContactUs.aspx">Contact</a> </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="bg">
        <table style="width: 100%">
            <tr>
                <td class="auto-style3">
                    Contact No</td>
                <td id="lblcontact" class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="5201241"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Fax No</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="012435677"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Email Address</td>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="JPT@yahoo.com"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Feedback</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="130px" Width="332px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">
                    <asp:Button ID="btnsend" runat="server" Text="Send" PostBackUrl="~/User/user.aspx" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</asp:Content>

