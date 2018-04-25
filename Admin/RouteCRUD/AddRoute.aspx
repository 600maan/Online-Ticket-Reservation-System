<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Admin/admin.master" CodeFile="AddRoute.aspx.cs" Inherits="Admin_RouteCRUD_AddRoute" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="Form1" runat="server">

        <table class="auto-style6">
            <tr>
                <td colspan="2">
                    <h1>Route Information</h1>
                </td>
            </tr>
            <tr>
                <td>From:</td>
                <td>
                    <asp:TextBox ID="txtfrom_des" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>To:</td>
                <td>
                    <asp:TextBox ID="txtto_des" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Fare:</td>
                <td>
                    <asp:TextBox ID="txtfare" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Departure Time:</td>
                <td>
                    <asp:TextBox ID="txtDeparture_time" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnadd" runat="server" Text="Add" OnClick="btnadd_Click" />
                </td>
                <td>
                    <asp:Button ID="btncancel" runat="server" PostBackUrl="~/Admin/ManageRoute.aspx" Text="Cancel" />
                </td>
            </tr>
        </table>
        &nbsp;
    </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentHeader">
    <img src="images/bannar.png" /><p>
    </p>
</asp:Content>




