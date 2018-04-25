<%@ Page Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="AddUser.aspx.cs" Inherits="Admin_UserCRUD_AddUser" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <table class="auto-style6">
            <tr>
                <td colspan="2">
                    <h1>User Information</h1>
                </td>
            </tr>
            <tr>
                <td>First Name</td>
                <td>
                    <asp:TextBox ID="txtfirstname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <asp:TextBox ID="txtlastname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname" ErrorMessage="Enter Last Name"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>Address1</td>
                <td>
                    <asp:TextBox ID="txtaddress1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress1" ErrorMessage="Enter Address1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Address2</td>
                <td>
                    <asp:TextBox ID="txtaddress2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtaddress2" ErrorMessage="Enter Address2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td>
                    <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcity" ErrorMessage="Enter City"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td>
                    <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtstate" ErrorMessage="Enter State"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Country</td>
                <td>
                    <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcountry" ErrorMessage="Enter Country"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtphone" ErrorMessage="Enter Phone"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Mobile</td>
                <td>
                    <asp:TextBox ID="txtmobile" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter Mobile"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Reference First Name</td>
                <td>
                    <asp:TextBox ID="txtreffirstname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtreffirstname" ErrorMessage="Enter Reference First Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Reference Last Name</td>
                <td>
                    <asp:TextBox ID="txtreflastname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtreflastname" ErrorMessage="Enter Reference Last Name"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Reference Email</td>
                <td>
                    <asp:TextBox ID="txtrefemail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtrefemail" ErrorMessage="Enter Reference Email"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Reference Phone</td>
                <td>
                    <asp:TextBox ID="txtrefphone" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtrefphone" ErrorMessage="Enter Reference Phone"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Gender</td>
                <td>
                    <asp:RadioButton ID="rdomale" runat="server" Checked="True" GroupName="gender" Text="Male" />
                    <asp:RadioButton ID="rdofemale" runat="server" GroupName="gender" Text="Female" />
                </td>
            </tr>

            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnusersubmit" runat="server" Text="Submit" OnClick="btnusersubmit_Click" />
                </td>
                <td>
                    <asp:Button ID="btncancel" runat="server" PostBackUrl="~/Admin/admin.aspx" Text="Cancel" ValidationGroup="aa" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentHeader">
    <img src="../images/bannar.png" />
</asp:Content>


