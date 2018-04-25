<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="DetailRoute.aspx.cs" Inherits="Admin_DetailRoute" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



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
            <td class="auto-style7" colspan="2"><h1>Detail...</h1> </td>
        </tr>
        <tr>
            <td class="auto-style7">From</td>
            <td class="auto-style7" width="350">
                <asp:Label ID="lblfrom" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">To</td>
            <td class="auto-style7">
                <asp:Label ID="lblto" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Fare</td>
            <td class="auto-style7">
                <asp:Label ID="lblfare" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Departure Time</td>
            <td class="auto-style7">
                <asp:Label ID="lbldeparturetime" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" colspan="2">
                <asp:Button ID="btnback" runat="server" PostBackUrl="~/Admin/ManageRoute.aspx" Text="Back" />
            </td>
        </tr>
    </table>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="../images/bannar.png" /><p>
    </p>
</asp:Content>


