using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_Schedule : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn.Open();
            SqlDataReader myReaderddl = null;
            SqlDataReader myReaderdd1 = null;
            SqlCommand myCommandddl = new SqlCommand("select routeid,from_des+'-'+to_des from tbl_route", conn);
            myReaderddl = myCommandddl.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(myReaderddl);
            ddlroute.DataSource = tbl;
            ddlroute.DataValueField = "routeid";
            ddlroute.DataTextField = "column1";
            ddlroute.DataBind();
            conn.Close();

            conn.Open();
            SqlCommand myCommanddd1 = new SqlCommand("SELECT busid, bus_no from tbl_bus", conn);
            myReaderdd1 = myCommanddd1.ExecuteReader();
            DataTable tbl1 = new DataTable();
            tbl1.Load(myReaderdd1);
            ddlbus.DataSource = tbl1;
            ddlbus.DataValueField = "busid";
            ddlbus.DataTextField = "bus_no";
            ddlbus.DataBind();
            conn.Close();
        }

    }


    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tbl_schedule values(@tvdate,@rid,@bid)";
        cmd.Parameters.AddWithValue("@tvdate", Calendar1.SelectedDate);
        cmd.Parameters.AddWithValue("@rid", ddlroute.SelectedValue);
        cmd.Parameters.AddWithValue("@bid", ddlbus.SelectedValue);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        //  string message = "Added";
        // btnaddschedule.Attributes.Add("onclick","alert('"+message+"');return false;");
        //Response.Write("<script language=javascript>alert('Schedule Added')</script>");
        Response.Redirect("Schedule.aspx");
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate <= DateTime.Today)
        {
            lblcalender.Text = "Sorry Enter Valid Date";
            tdview.Visible = false;
        }
        else
        {
            lblcalender.Text = "";


        }

    }
    protected void gvschedule_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnschedule_Click(object sender, EventArgs e)
    {
        tdview.Visible = true;
        DateTime today = DateTime.Today;
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select s.id as Schedule_ID,s.travelling_date as Travelling_Date,r.from_des+'-'+r.to_des as Route,b.bus_no as Bus_Number from tbl_schedule as s,tbl_route as r,tbl_bus as b where s.travelling_date>@today and s.routeid=r.routeid and s.busid=b.busid";
        cmd.Parameters.AddWithValue("@today", today);
        cmd.Connection.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        gvschedule.DataSource = rdr;
        gvschedule.DataBind();
        cmd.Connection.Close();

    }
}