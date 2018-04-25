using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_RouteCRUD_AddRoute : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtDeparture_time.Text = Calendar1.SelectedDate.ToString();
    }

    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tbl_route(from_des,to_des,fare,departure_time)values(@from_des,@to_des,@fare,@departure_time)";
        cmd.Parameters.AddWithValue("@from_des", txtfrom_des.Text);
        cmd.Parameters.AddWithValue("@to_des", txtto_des.Text);
        cmd.Parameters.AddWithValue("@fare", txtfare.Text);
        cmd.Parameters.AddWithValue("@departure_time", txtDeparture_time.Text);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        Response.Redirect("~/Admin/ManageRoute.aspx");

    }
}