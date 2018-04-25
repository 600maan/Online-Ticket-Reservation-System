<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                   
		<div class="blog">
            <img src="../images/tickets-icon.png" alt=""/>
			<div>
                				<h3>Welcome To Online Bus Ticketing System</h3>
                <p>
					"Tired of long queues and tedious bus ticketing in the counter."
                    </p><p>
                We bring to you the best and easy ticketing option <span class="style1"><strong>Online Bus Ticketing System</strong></span>.</p>
                       
				
			</div>
		</div>
		<div class="article">
			<div>
            <h3>Our Services</h3>
				<ul>
                    <li>Buy ticket online staying at home.</li>
                    <li>Create your own account </li>
                </ul>
			</div>
            <img src="../images/y.png" alt=""/>
			</div>
		<div class="news">
			<div>
				
			</div>
	</div>

</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentHeader">

    <img src="../Images/bannar.png" alt="" />
         <ul>
        <a href="LoginAdmin.aspx" style="text-decoration:none"><h2> Admin Login</h2></a> 
        </ul>
    
</asp:Content>


