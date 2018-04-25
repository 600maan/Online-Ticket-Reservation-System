using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_BookTicket : System.Web.UI.Page
{
    static int userid,fare,balance;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    public void displayfare(string route)   //Automatic displaying fare for selected route
    {
        
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select fare,departure_time from tbl_route where routeid=@routeid";
        cmd.Parameters.AddWithValue("@routeid", route);
        cmd.Connection.Open();
        DataTable tbl = new DataTable();
        SqlDataReader rdr = cmd.ExecuteReader();
        tbl.Load(rdr);
        cmd.Connection.Close();
        lbltime.Text = tbl.Rows[0]["departure_time"].ToString();
        fare = tbl.Rows[0]["fare"].GetHashCode();
        lblticketprice.Text = "Rs." + fare;
    }

    public void displayseat()   //to display seats available for the selected route and for selected date.
    {


        conn.Open();
        SqlDataReader myReaderddl = null;
        SqlCommand myCommandddl = new SqlCommand("SELECT seat_no FROM tbl_seat where seat_no not in(select seat from tbl_ticket where travelling_date=@tvdate and routeid=@routeid)", conn);
        myCommandddl.Parameters.AddWithValue("@tvdate", Calendar1.SelectedDate);
        myCommandddl.Parameters.AddWithValue("@routeid", ddlroute.SelectedValue);
        myReaderddl = myCommandddl.ExecuteReader();
        if (!myReaderddl.HasRows)
        {
            lblcalendar.Text = "Seat is not available for this route and date .";
        }
        else
            lblcalendar.Text = "";
        ddlseat.DataSource = myReaderddl;
        ddlseat.DataValueField = "seat_no";
        ddlseat.DataTextField = "seat_no";
        ddlseat.DataBind();
        myReaderddl.Close();
        conn.Close();


    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        userid = (int)Session["userid"];
        if (userid == 0)
        {
            Response.Redirect("Home.aspx");
        }
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select balance from tbl_bank where userid=@userid";
        cmd.Parameters.AddWithValue("@userid", userid);
        cmd.Connection.Open();
        balance =(int)cmd.ExecuteScalar();
        cmd.Connection.Close();
        lblbalance.Text ="Rs."+balance;
       
    }
    protected void ddlroute_SelectedIndexChanged(object sender, EventArgs e)
    {

        displayfare(ddlroute.SelectedValue);
        displayseat();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate <= DateTime.Today)
        {
            lblcalendar.Text = "Invalid date selection.";
        }
        else
        {

            conn.Open();
            SqlDataReader myReaderddl = null;
            SqlCommand myCommandddl = new SqlCommand("select s.routeid,r.from_des+'-'+r.to_des from tbl_route as r,tbl_schedule as s where s.travelling_date=@tvdate and r.routeid=s.routeid", conn);
            myCommandddl.Parameters.AddWithValue("@tvdate", Calendar1.SelectedDate);
            myReaderddl = myCommandddl.ExecuteReader();
            if (!myReaderddl.HasRows)
            {
                lblcalendar.Text = "Sorry no bus is scheduled for this date.";
            }
            else
            {
                DataTable tbl = new DataTable();
                tbl.Load(myReaderddl);
                ddlroute.DataSource = tbl;
                ddlroute.DataValueField = "routeid";
                ddlroute.DataTextField = "column1";
                ddlroute.DataBind();
                conn.Close();
                ddlroute.SelectedValue = tbl.Rows[0][0].ToString();
                displayfare("" + ddlroute.SelectedValue);
                displayseat();
            }
        }
        
    }
    protected void btngenerate_Click(object sender, EventArgs e)
    {
        if (balance < fare)
        {
            lblerrorbalance.Text = "You donot have enought balance. Please deposite balance in your account.";
        }
        else
        {
            balance = balance - fare;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select busid from tbl_schedule where travelling_date=@tvdate and routeid=@routeid";
            cmd.Parameters.AddWithValue("@routeid", ddlroute.SelectedValue);
            cmd.Parameters.AddWithValue("@tvdate", Calendar1.SelectedDate);
            cmd.Connection.Open();
            string busid = cmd.ExecuteScalar().ToString();
            cmd = conn.CreateCommand();
            cmd.CommandText = "insert into tbl_ticket values(@userid,@routeid,@busid,@tvdate,@seat,@price)";
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@busid", busid);
            cmd.Parameters.AddWithValue("@routeid", ddlroute.SelectedValue);
            cmd.Parameters.AddWithValue("@tvdate", Calendar1.SelectedDate);
            cmd.Parameters.AddWithValue("@seat", ddlseat.SelectedValue);
            cmd.Parameters.AddWithValue("@price", fare);
            cmd.ExecuteNonQuery();
            cmd = conn.CreateCommand();
            cmd.CommandText = "select @@identity";
            string id = cmd.ExecuteScalar().ToString();
            Session["tkid"] = id;
            // Response.Write(id);
            cmd.CommandText = "update tbl_bank set balance=@bal where userid=@userid";
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Parameters.AddWithValue("@bal", balance);
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            Response.Redirect("GenerateTicket.aspx");

        }

    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("user.aspx");
    }
}