using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DetailAdmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["AdminId"];
        if (id != null)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tbl_admin where adminid=@id";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(rdr);
            cmd.Connection.Close();
            lblname.Text = tbl.Rows[0]["admin_firstname"].ToString();
            lbladdress1.Text = tbl.Rows[0]["admin_address1"].ToString();
            lbladdress2.Text = tbl.Rows[0]["admin_address2"].ToString();
            lblcity.Text = tbl.Rows[0]["admin_city"].ToString();
            lblstate.Text = tbl.Rows[0]["admin_state"].ToString();
            lblcountry.Text = tbl.Rows[0]["admin_country"].ToString();
            lblphone.Text = tbl.Rows[0]["admin_phone"].ToString();
            lblmobile.Text = tbl.Rows[0]["admin_mobile"].ToString();
            lblgender.Text = tbl.Rows[0]["admin_gender"].ToString();
            lblcitizenshipno.Text = tbl.Rows[0]["admin_citizenshipno"].ToString();
        }
    }
}