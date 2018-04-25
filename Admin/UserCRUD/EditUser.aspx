<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="EditUser.aspx.cs" Inherits="Minor_Project_Admin_EditUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

            .auto-style1 {
                width: 100%;
            }
        .auto-style7 {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form runat="server">
    <table class="auto-style1">
    <tr>
        <td colspan="2">
            <h1>Account Information<asp:HiddenField ID="hfId" runat="server" />
            </h1>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>Account Number</td>
        <td>
            <asp:TextBox ID="txtaccountnumber" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtaccountnumber" ErrorMessage="Enter Account Number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Pin Number</td>
        <td>
            <asp:TextBox ID="txtpinnumber" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpinnumber" ErrorMessage="Enter Pin Number"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Balance</td>
        <td>
            <asp:TextBox ID="txtbalance" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbalance" ErrorMessage="Enter Balance"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" colspan="2">
            <h1>Personal Information</h1>
        </td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td>First Name</td>
        <td>
            <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfirstname" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Last Name</td>
        <td>
            <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlastname" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Address1</td>
        <td>
            <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtaddress1" ErrorMessage="Enter Address1"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Address2</td>
        <td>
            <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtaddress2" ErrorMessage="Enter Address2"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>City</td>
        <td>
            <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>State</td>
        <td>
            <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtstate" ErrorMessage="Enter State"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Country</td>
        <td>
            <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtcountry" ErrorMessage="Enter Country"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Phone</td>
        <td>
            <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter Phone"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Mobile</td>
        <td>
            <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter Mobile"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Email</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style7">Gender</td>
        <td class="auto-style7">
            <asp:RadioButton ID="rdomale" runat="server" Checked="True" Text="Male" ValidationGroup="gender" GroupName="gender" />
            <asp:RadioButton ID="rdofemale" runat="server" Text="Female" ValidationGroup="gender" GroupName="gender" />
        </td>
        <td class="auto-style7">
            &nbsp;</td>
    </tr>
    <tr>
        <td>Reference First Name</td>
        <td>
            <asp:TextBox ID="txtreferencefirstname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtreferencefirstname" ErrorMessage="Enter Reference First Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Reference Last Name</td>
        <td>
            <asp:TextBox ID="txtreferencelastname" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtreferencelastname" ErrorMessage="Enter Reference Last Name"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Reference Email</td>
        <td>
            <asp:TextBox ID="txtreferenceemail" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtreferenceemail" ErrorMessage="Enter Reference Email"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Reference Phone</td>
        <td>
            <asp:TextBox ID="txtreferencephone" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtreferencephone" ErrorMessage="Enter Reference Phone"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnsubmituserdetails" runat="server" Text="Submit" OnClick="btnsubmituserdetails_Click" />
        </td>
        <td>
            <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" PostBackUrl="~/Admin/ManageUser.aspx" Text="Cancel" ValidationGroup="aa" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
        </form>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">
    <img src="../images/bannar.png" /><p>
    </p>
</asp:Content>




