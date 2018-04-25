<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="EditRoute.aspx.cs" Inherits="Admin_EditRoute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <table class="auto-style6">
        <tr>
            <td><h1>Route Information<asp:HiddenField ID="hfId" runat="server" />
                </h1></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>From</td>
            <td>
                <asp:TextBox ID="txtfrom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>To</td>
            <td>
                <asp:TextBox ID="txtto" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Departure Time</td>
            <td>
                <asp:TextBox ID="txtdeparturetime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Fare</td>
            <td>
                <asp:TextBox ID="txtfare" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbltest" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnsubmitroutedetails" runat="server" OnClick="btnsubmitroutedetails_Click" Text="Button" />
            </td>
            <td>
                <asp:Button ID="btncancel" runat="server" PostBackUrl="~/Admin/ManageRoute.aspx" Text="Cancel" />
            </td>
        </tr>
    </table>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="../images/bannar.png" /><p>
    </p>
</asp:Content>


