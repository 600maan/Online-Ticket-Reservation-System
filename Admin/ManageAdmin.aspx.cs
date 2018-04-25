using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageAdmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select adminid,admin_firstname+' '+admin_lastname as admin_name,admin_username,admin_password,admin_city,admin_state,admin_country,admin_mobile from tbl_admin";
        cmd.Connection.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        DataTable tbl = new DataTable();
        tbl.Load(rdr);
        cmd.Connection.Close();
        Session["adminid"] = tbl.Rows[0]["adminid"].ToString();
        GridView1.DataSource = tbl;
        GridView1.DataBind();
    }
}