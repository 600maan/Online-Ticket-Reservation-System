using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_DetailBus : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["BusId"];
        if (id != null)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tbl_bus,tbl_driver,tbl_route where tbl_bus.driverid=tbl_driver.driverid and tbl_bus.routeid=tbl_route.routeid and busid=@id";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(rdr);
            cmd.Connection.Close();
            // lblname.Text = tbl.Rows[0]["firstname"].ToString() + tbl.Rows[0]["lastname"].ToString();
            lblbusid.Text = tbl.Rows[0]["busid"].ToString();
            lblbusno.Text = tbl.Rows[0]["bus_no"].ToString();
            lblbustype.Text = tbl.Rows[0]["bus_type"].ToString();
            lblbusname.Text = tbl.Rows[0]["bus_name"].ToString();
            lblmodelno.Text = tbl.Rows[0]["model_no"].ToString();
            lblseatcapacity.Text = tbl.Rows[0]["seat_capacity"].ToString();
            lbldrivername.Text = tbl.Rows[0]["firstname"].ToString() + " " + tbl.Rows[0]["lastname"].ToString();
            lblroutename.Text = tbl.Rows[0]["from_des"].ToString() + "-" + tbl.Rows[0]["to_des"].ToString();


        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ManageBus.aspx");
    }
}