using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_ViewHistory : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        int userid = (int)Session["userid"];
        DateTime today = DateTime.Today;
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select t.ticketid as Ticket_Id,t.travelling_date as Travelling_Date,r.from_des+'-'+r.to_des as Route,b.bus_no as Bus_Number from tbl_route as r,tbl_ticket as t,tbl_bus as b where t.travelling_date<@today and t.routeid=r.routeid and t.userid=@userid and b.busid=t.busid";
        cmd.Parameters.AddWithValue("@today", today);
        cmd.Parameters.AddWithValue("@userid", userid);
        cmd.Connection.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        gvhistory.DataSource = rdr;
        gvhistory.DataBind();
    }
}