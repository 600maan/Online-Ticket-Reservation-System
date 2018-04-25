<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GenerateTicket.aspx.cs" Inherits="User_GenerateTicket" %>

<html>
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            
    background-image: url('../Images/tk.jpg');
    background-repeat: no-repeat;
            height: 874px;
        }
         
        .style2
        {
            height: 23px;
        }
         
        #form1
        {
            text-align: center;
        }
         
        .style3
        {
            height: 23px;
            width: 62px;
        }
        .style4
        {
            width: 62px;
        }
         
    </style>
</head>
<body>
    <form id="form1" runat="server">
   
   
    <p>
        &nbsp;</p>
    <br />
    <table style="height: 301px; width: 784px">
        <tr>
            <td class="style2">
                Ticket Number</td>
            <td class="style2">
                <asp:Label ID="lbltknumber" runat="server"></asp:Label>
            </td>
            <td class="style2">
                Issuing Date
            </td>
            <td class="style3">
                <asp:Label ID="lbltkdate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Name 
            </td>
            <td>
                <asp:Label ID="lblname" runat="server"></asp:Label>
            </td>
            <td>
               Travelling Date</td>
            <td class="style4">
                <asp:Label ID="lbltvdate" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Mobile</td>
            <td>
                <asp:Label ID="lblmobile" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Route</td>
            <td>
                <asp:Label ID="lblroute" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Price</td>
            <td>
                <asp:Label ID="lblprice" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Bus Number</td>
            <td class="style2">
                <asp:Label ID="lblbusno" runat="server"></asp:Label>
            </td>
            <td class="style2">
                Seat Number</td>
            <td class="style3">
                <asp:Label ID="lblseat" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
                Enjoy Your Journey....<br />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="text-align: center">
   
   
    <asp:Button ID="btnprint" runat="server" onclick="btnprint_Click" 
        style="text-align: center" Text="Print" />
   
   
            </td>
        </tr>
    </table>
   
   
    </form>
    </body>
</html>
