using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_DetailRoute : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["routeid"];
        if (id != null)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tbl_route where routeid=@id";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            DataTable tbl = new DataTable();
            tbl.Load(rdr);
            cmd.Connection.Close();
            lblfrom.Text = tbl.Rows[0]["from_des"].ToString();
            lblto.Text = tbl.Rows[0]["to_des"].ToString();
            lblfare.Text = tbl.Rows[0]["fare"].ToString();
            lbldeparturetime.Text = tbl.Rows[0]["departure_time"].ToString();

        }
    }
}