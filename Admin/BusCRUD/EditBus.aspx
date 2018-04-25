<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="EditBus.aspx.cs" Inherits="Admin_EditBus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            height: 23px;
        }
     .auto-style8 {
         height: 26px;
     }
     .auto-style9 {
         height: 59px;
     }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
     <table class="auto-style6">
    <tr>
        <td colspan="2">
            <h1>Bus Information</h1>
            <asp:HiddenField ID="hfId" runat="server" />
        </td>
    </tr>
    <tr>
        <td>Bus No.</td>
        <td>
            <asp:TextBox ID="txtbusno" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Bus Type</td>
        <td>
            <asp:TextBox ID="txtbustype" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Seat Capacity</td>
        <td>
            <asp:TextBox ID="txtseatcapacity" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Bus Name</td>
        <td>
            <asp:TextBox ID="txtbusname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Model No</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtmodelno" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Driver Id</td>
        <td class="auto-style9">

            <asp:DropDownList ID="ddldriverid" runat="server" DataTextField="Column1" DataValueField="driverid" DataSourceID="SqlDataSource2">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select driverid,firstname+' '+lastname from tbl_driver" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Route Id</td>
        <td class="auto-style8">
            <asp:DropDownList ID="ddlrouteid" runat="server" DataSourceID="SqlDataSource1" DataTextField="Column1" DataValueField="routeid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="select routeid,from_des+'-'+to_des from tbl_route" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnsubmitbusdetails" runat="server" Text="Update" OnClick="btnsubmitbusdetails_Click" />
        </td>
        <td>
            <asp:Button ID="btncancel" runat="server" PostBackUrl="~/Admin/ManageBus.aspx" Text="Cancel" />
        </td>
    </tr>
    </table>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="..//images/bannar.png" /><p>
    </p>
</asp:Content>


