using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddBus : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        // retrieve list of driver and populate the dropdownlist
        LoadDrivers();
        // retrieve list of available routes and populate the dropdown list
        LoadRoutes();


    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tbl_bus(bus_no,bus_type,seat_capacity,bus_name,model_no,driverid,routeid)values(@bno,@btype,@seatcapacity,@bname,@modelno,@ddldriverid,@ddlrouteid)";
        cmd.Parameters.AddWithValue("@bno", txtbusno.Text);
        cmd.Parameters.AddWithValue("@btype", txtbustype.Text);
        cmd.Parameters.AddWithValue("@seatcapacity", txtseatcapacity.Text);
        cmd.Parameters.AddWithValue("@bname", txtbusname.Text);
        cmd.Parameters.AddWithValue("@modelno", txtmodelno.Text);
        cmd.Parameters.AddWithValue("@ddldriverid", ddlDriver.SelectedValue);
        cmd.Parameters.AddWithValue("@ddlrouteid", ddlRoutes.SelectedValue);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        Response.Redirect("~/Admin/ManageBus.aspx");
    }


    public void LoadDrivers()
    {
        DataTable drivers = new DataTable();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString))
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT driverid, firstname,lastname, license FROM tbl_driver", con);
                adapter.Fill(drivers);
                drivers.Columns.Add("driver", typeof(string), "firstname + ' ' + lastname + '(' + license + ')'");
                ddlDriver.DataSource = drivers;
                ddlDriver.DataTextField = "driver";
                ddlDriver.DataValueField = "driverid";
                ddlDriver.DataBind();
            }
            catch (Exception ex)
            {
                // Handle the error
            }
        }
    }

    public void LoadRoutes()
    {
        DataTable routes = new DataTable();
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString))
        {
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter("SELECT routeid, from_des, to_des FROM tbl_route", con);
                adapter.Fill(routes);
                routes.Columns.Add("fromandto", typeof(string), "from_des + ' to ' + to_des");
                ddlRoutes.DataSource = routes;
                ddlRoutes.DataTextField = "fromandto";
                ddlRoutes.DataValueField = "routeid";
                ddlRoutes.DataBind();
            }
            catch (Exception ex)
            {
                // Handle the error
            }
        }
    }
}