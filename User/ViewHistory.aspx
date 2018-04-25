<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="ViewHistory.aspx.cs" Inherits="User_ViewHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
#one
{
    height:250px;
    overflow:scroll;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <div id="one">
    <asp:GridView ID="gvhistory" runat="server">
    </asp:GridView>
     </div>
    <asp:Button ID="btnback" runat="server" PostBackUrl="~/User/user.aspx" 
        Text="Back" />
       
    <br />
    </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <ul style="padding:10px">
        <li><a href="User.aspx">Home</a> </li>
        <li><a href="BookTicket.aspx">Book Ticket</a> </li>
        <li class="selected"><a href="ViewHistory.aspx">View History</a> </li>
    </ul>
</asp:Content>


