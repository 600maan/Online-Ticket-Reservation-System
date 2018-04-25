<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="AddDriver.aspx.cs" Inherits="Admin_AddDriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">

    <table class="auto-style6">
    <tr>
        <td colspan="2">
            <h1>Driver Information</h1>
        </td>
    </tr>
    <tr>
        <td>First Name:</td>
        <td>
            <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Last Name:</td>
        <td>
            <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Address1:</td>
        <td>
            <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Address2:</td>
        <td>
            <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">City:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>State:</td>
        <td>
            <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Country:</td>
        <td>
            <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Phone:</td>
        <td>
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Mobile:</td>
        <td>
            <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>License:</td>
        <td>
            <asp:TextBox ID="txtlicense" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Citizenship No:</td>
        <td>
            <asp:TextBox ID="txtcitizenshipno" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" />
        </td>
        <td>
            <asp:Button ID="btncancel" runat="server" PostBackUrl="~/Admin/ManageDriver.aspx" Text="Cancel" />
        </td>
    </tr>
    </table>
&nbsp;
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="images/bannar.png" /><p>
    </p>
</asp:Content>


