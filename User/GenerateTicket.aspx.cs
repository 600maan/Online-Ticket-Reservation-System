using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_GenerateTicket : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime today = DateTime.Today;
        string tkid = (string)Session["tkid"];
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select t.ticketid,u.first_name+''+u.last_name,r.from_des+'-'+r.to_des,u.mobile,r.fare,b.bus_no,convert(varchar(10),t.travelling_date,101),t.seat from tbl_ticket as t,tbl_route as r,tbl_schedule as s,tbl_bus as b,tbl_user as u where t.userid=u.userid and t.ticketid=@tkid and t.routeid=r.routeid and t.routeid=s.routeid and t.travelling_date=s.travelling_date and s.busid=b.busid;";
        cmd.Parameters.AddWithValue("@tkid", tkid);
        cmd.Connection.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        DataTable tbl = new DataTable();
        tbl.Load(rdr);
        cmd.Connection.Close();
        lblseat.Text = tbl.Rows[0][7].ToString();
        lbltknumber.Text = tbl.Rows[0][0].ToString();
        lblname.Text = tbl.Rows[0][1].ToString();
        lblroute.Text = tbl.Rows[0][2].ToString();
        lblmobile.Text = tbl.Rows[0][3].ToString();
        lblprice.Text = "Rs. " + tbl.Rows[0][4].ToString();
        lblbusno.Text = tbl.Rows[0][5].ToString();
      //  string dat=tbl.Rows[0][6].ToString();
     //   DateTime dt = DateTime.ParseExact(dat,"MM/dd/yyyy",System.Globalization.CultureInfo.InvariantCulture);
        lbltvdate.Text = tbl.Rows[0][6].ToString(); ;
        lbltkdate.Text = "" + today.ToShortDateString();

    }
    protected void btnprint_Click(object sender, EventArgs e)
    {
        btnprint.Attributes.Add("onclick", "window.print()");
    }
}