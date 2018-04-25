<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="LoginUser.aspx.cs" Inherits="User_LoginUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <form runat="server">
                <p>Use suman for username and passoword for demo</p>
			<div>
    <table align="center">
        <tr>
            <td class="style1" colspan="2">
                Welcome User</td>
        </tr>
        <tr>
            <td>
                Account Number</td>
            <td>
                <asp:TextBox ID="txtaccount" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Pin Number</td>
            <td class="style2">
                <asp:TextBox ID="txtpin" runat="server" TextMode="Password"></asp:TextBox>
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
    </div>
    </form>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
   
        <img alt="" src="../images/bannar.png" />
</asp:Content>



