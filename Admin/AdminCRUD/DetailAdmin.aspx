<%@ Page Language="C#"  MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="DetailAdmin.aspx.cs" Inherits="Admin_DetailAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

.title {
    font-size: xx-large;
    font-weight: bolder;
    color: #CC0000;
    background-color: #FFFFCC;
}


        .auto-style7 {
            font-size: x-large;
            color: #333333;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <table align="center" width="500" id="tblresult" runat="server" >
        <tr>
            <td class="auto-style7" colspan="2">Detail... </td>
        </tr>
        <tr>
            <td class="auto-style7">Name</td>
            <td class="auto-style7" width="350">
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Address1</td>
            <td class="auto-style7">
                <asp:Label ID="lbladdress1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Address2</td>
            <td class="auto-style7">
                <asp:Label ID="lbladdress2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">City</td>
            <td class="auto-style7">
                <asp:Label ID="lblcity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">State</td>
            <td class="auto-style7">
                <asp:Label ID="lblstate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Country</td>
            <td class="auto-style7">
                <asp:Label ID="lblcountry" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Phone</td>
            <td class="auto-style7">
                <asp:Label ID="lblphone" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Mobile</td>
            <td class="auto-style7">
                <asp:Label ID="lblmobile" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Gender</td>
            <td class="auto-style7">
                <asp:Label ID="lblgender" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">CitizenShip Number</td>
            <td class="auto-style7">
                <asp:Label ID="lblcitizenshipno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btnback" runat="server" PostBackUrl="~/Admin/ManageAdmin.aspx" Text="Back" />
            </td>
        </tr>
    </table>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="../images/bannar.png" /><p>
    </p>
</asp:Content>


