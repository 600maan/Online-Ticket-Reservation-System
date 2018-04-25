<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="Admin_LoginAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style1
        {
            height: 23px;
            text-align: center;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
        <p>Use aaaa for username and passoword for demo</p>
    <table align="center">
        <tr>
            <td class="style1" colspan="2">Welcome Admin</td>
        </tr>
        <tr>
            <td>Username</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">Password</td>
            <td class="style1">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lblerror" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnlogin" runat="server" Text="Login" 
                    onclick="btnlogin_Click" />
            </td>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                    PostBackUrl="~/User/Default.aspx" />
            </td>
        </tr>
    </table>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="../images/bannar.png" /><p>
    </p>
</asp:Content>


