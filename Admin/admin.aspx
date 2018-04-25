<!DOCTYPE html>
<html>
<head>
    <title>OBTRS Admin Page</title>
    <style>
        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        li {
            float: left;
        }

            li a, .dropbtn {
                display: inline-block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

                li a:hover, .dropdown:hover .dropbtn {
                    background-color: red;
                }

            li.dropdown {
                display: inline-block;
            }

        .dropbtn-logout {
            display: inline-block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
            background-color: #333;
            font-family:'Times New Roman';
            border  :none;
            outline :none;
        }
            .dropbtn-logout:hover {
            background-color:red;
            }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

                .dropdown-content a:hover {
                    background-color: #f1f1f1;
                }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>
    <div class="bg">
        <h1 style="text-align: center">
            <img alt="" class="style1" src="../Images/bannar.png" /></h1>
        <h1 style="text-align: center">&nbsp;Admin Page</h1>
    </div>
    <form runat="server">
        <nav id="main-nav">
            <ul>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">ADMIN</a>
                    <div class="dropdown-content">
                        <a href="AdminCRUD/AddAdmin.aspx">Add Admin</a>
                        <a href="ManageAdmin.aspx">Manage Admin</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">USER</a>
                    <div class="dropdown-content">
                        <a href="UserCRUD/AddUser.aspx">Add User</a>
                        <a href="ManageUser.aspx">Manage User</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">BUS</a>
                    <div class="dropdown-content">
                        <a href="BusCRUD/AddBus.aspx">Add Bus</a>
                        <a href="ManageBus.aspx">Manage Bus</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">ROUTE</a>
                    <div class="dropdown-content">
                        <a href="RouteCRUD/AddRoute.aspx">Add Route</a>
                         <a href="ManageRoute.aspx">Manage Route</a>
                       
                    </div>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">DRIVER</a>
                    <div class="dropdown-content">
                        <a href="DriverCRUD/AddDriver.aspx">Add Driver</a>
                        <a href="ManageDriver.aspx">Manage Driver</a>
                        
                    </div>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">SCHEDULE</a>
                    <div class="dropdown-content">
                        <a href="Schedule.aspx">Manage Schedule</a>
                    </div>
                </li>
                <li style="float: right">
                    <asp:Button ID="adminLogOutbtn" runat="server" Text="LOG OUT" PostBackUrl="~/User/Default.aspx" CssClass="dropbtn-logout" />
                </li>
            </ul>
        </nav>

    </form>
</body>
</html>
