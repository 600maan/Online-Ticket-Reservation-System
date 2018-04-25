<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="DetailDriver.aspx.cs" Inherits="Admin_DetailDriver" %>

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
            <td class="style1">Name</td>
            <td class="auto-style7" width="350">
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Address1</td>
            <td class="auto-style7">
                <asp:Label ID="lbladdress1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Address2</td>
            <td class="auto-style7">
                <asp:Label ID="lbladdress2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">City</td>
            <td class="auto-style7">
                <asp:Label ID="lblcity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">State</td>
            <td class="auto-style7">
                <asp:Label ID="lblstate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Country</td>
            <td class="auto-style7">
                <asp:Label ID="lblcountry" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Phone</td>
            <td class="auto-style7">
                <asp:Label ID="lblphone" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Mobile</td>
            <td class="auto-style7">
                <asp:Label ID="lblmobile" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">License</td>
            <td class="auto-style7">
                <asp:Label ID="lbllicense" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">Citizenship No: </td>
            <td class="auto-style7">
                <asp:Label ID="lblctznshpno" runat="server"></asp:Label>
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
    <img src="../images/bannar.png" /><p>
    </p>
</asp:Content>


