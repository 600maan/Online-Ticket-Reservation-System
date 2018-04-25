using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_DetailUser : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["userid"];
        if (id != null)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tbl_user where userid=@id";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(rdr);
            cmd.Connection.Close();
            lblname.Text = tbl.Rows[0]["first_name"].ToString();
            lbladdress1.Text = tbl.Rows[0]["address1"].ToString();
            lbladdress2.Text = tbl.Rows[0]["address2"].ToString();
            lblcity.Text = tbl.Rows[0]["city"].ToString();
            lblemail.Text = tbl.Rows[0]["email"].ToString();
            lblstate.Text = tbl.Rows[0]["state"].ToString();
            lblcountry.Text = tbl.Rows[0]["country"].ToString();
            lblphone.Text = tbl.Rows[0]["phone"].ToString();
            lblmobile.Text = tbl.Rows[0]["mobile"].ToString();
            lblgender.Text = tbl.Rows[0]["gender"].ToString();
            lblrefname.Text = tbl.Rows[0]["ref_firstname"].ToString();
            lblrefemail.Text = tbl.Rows[0]["ref_email"].ToString();
            lblrefphone.Text = tbl.Rows[0]["ref_phone"].ToString();
          
        }
    }
}