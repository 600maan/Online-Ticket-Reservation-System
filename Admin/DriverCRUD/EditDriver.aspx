<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="EditDriver.aspx.cs" Inherits="Admin_EditDriver" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Last Name:</td>
        <td>
            <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Address1:</td>
        <td>
            <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress1" ErrorMessage="Enter Address1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Address2:</td>
        <td>
            <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtaddress2" ErrorMessage="Enter Address2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">City:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">State:</td>
        <td class="auto-style8">
            <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtstate" ErrorMessage="Enter State"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Country:</td>
        <td>
            <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcountry" ErrorMessage="Enter Country"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Phone:</td>
        <td>
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter Phone"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Mobile:</td>
        <td>
            <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter Mobile"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>License:</td>
        <td>
            <asp:TextBox ID="txtlicense" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtlicense" ErrorMessage="Enter License"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Citizenship No:</td>
        <td>
            <asp:TextBox ID="txtcitizenshipno" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtcitizenshipno" ErrorMessage="Enter Citizenship No"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnupdate" runat="server" Text="Update" 
                OnClick="btnadd_Click" />
        </td>
    </tr>
    </table>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="../images/bannar.png" /><p>
    </p>
</asp:Content>


