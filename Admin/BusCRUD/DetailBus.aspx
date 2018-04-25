<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="DetailBus.aspx.cs" Inherits="Admin_DetailBus" %>

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
      .style1
      {
          font-size: x-large;
          color: #333333;
          font-weight: bold;
          width: 272px;
      }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="Form1" runat="server">
<table align="center" width="500" id="tblresult" runat="server" >
        <tr>
            <td class="auto-style7" colspan="2">Detail... </td>
        </tr>
        <tr>
            <td class="style1">Bus id</td>
            <td class="auto-style7" width="350">
                <asp:Label ID="lblbusid" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Bus No.</td>
            <td class="auto-style7">
                <asp:Label ID="lblbusno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Bus Type</td>
            <td class="auto-style7">
                <asp:Label ID="lblbustype" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Seat Capacity</td>
            <td class="auto-style7">
                <asp:Label ID="lblseatcapacity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Bus Name</td>
            <td class="auto-style7">
                <asp:Label ID="lblbusname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Model No</td>
            <td class="auto-style7">
                <asp:Label ID="lblmodelno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Driver Name</td>
            <td class="auto-style7">
                <asp:Label ID="lbldrivername" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Route Name</td>
            <td class="auto-style7">
                <asp:Label ID="lblroutename" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Back" />
            </td>
            <td class="auto-style7">
                &nbsp;</td>
        </tr>
        </table>    
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="images/bannar.png" /><p>
    </p>
</asp:Content>


