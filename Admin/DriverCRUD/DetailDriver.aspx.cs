using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_DetailDriver : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["DriverId"];
        if (id != null)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tbl_driver where driverid=@id";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(rdr);
            cmd.Connection.Close();
            lblname.Text = tbl.Rows[0]["firstname"].ToString() + tbl.Rows[0]["lastname"].ToString();
            lbladdress1.Text = tbl.Rows[0]["address1"].ToString();
            lbladdress2.Text = tbl.Rows[0]["address2"].ToString();
            lblcity.Text = tbl.Rows[0]["city"].ToString();

            lblstate.Text = tbl.Rows[0]["state"].ToString();
            lblcountry.Text = tbl.Rows[0]["country"].ToString();
            lblphone.Text = tbl.Rows[0]["phone"].ToString();
            lblmobile.Text = tbl.Rows[0]["mobile"].ToString();
            lbllicense.Text = tbl.Rows[0]["license"].ToString();
            lblctznshpno.Text = tbl.Rows[0]["citizenshipno"].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Admin/ManageDriver.aspx");
    }
}