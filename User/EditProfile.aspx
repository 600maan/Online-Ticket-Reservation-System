<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="User_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

            .auto-style6 {
                width: 100%;
            }
        .style1
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <table>
        <tr>
            <td class="auto-style6" colspan="3">
                <h1>
                    Edit Profile</h1>
            </td>
            
        </tr>
        <tr>
            <td>
                First Name</td>
            <td>
                <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblfname" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Last Name</td>
            <td>
                <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Address1</td>
            <td>
                <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Address2</td>
            <td>
                <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                Pin Number</td>
            <td class="style1">
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                City</td>
            <td>
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                State</td>
            <td>
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Country</td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Phone</td>
            <td>
                <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Mobile</td>
            <td>
                <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Email</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Gender</td>
            <td>
                <asp:RadioButton ID="rdomale" runat="server" GroupName="gender" Text="Male" />
            </td>
            <td>
                <asp:RadioButton ID="rdofemale" runat="server" GroupName="gender" Text="Female" />
            </td>
        </tr>
        <tr>
            <td>
                Reference First Name</td>
            <td>
                <asp:TextBox ID="txtreffname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Reference Last Name</td>
            <td>
                <asp:TextBox ID="txtreflname" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Reference Mobile No. </td>
            <td>
                <asp:TextBox ID="txtrefmobile" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Reference Email</td>
            <td>
                <asp:TextBox ID="txtrefemail" runat="server" 
                   ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" 
                    onclick="btnsubmit_Click" />
                <asp:Button ID="btncancel" runat="server" Text="Cancel" 
                    onclick="btncancel_Click" ValidationGroup="aa" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="lbluser" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
        </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <ul style="padding:10px">
        <li><a href="User.aspx">Home</a> </li>
        <li><a href="BookTicket.aspx">Book Ticket</a> </li>
        <li><a href="ViewHistory.aspx">View History</a> </li>
    </ul>
</asp:Content>


