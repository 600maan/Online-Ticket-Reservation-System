using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_DeleteUser : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["userid"];
        if (id != null)
        {

            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "delete from tbl_bank where userid=@id ";
            cmd1.Parameters.AddWithValue("@id", id);
            cmd1.Connection.Open();
            cmd1.ExecuteNonQuery();
            cmd1.Connection.Close();
       
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from tbl_user where userid=@id ";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();

           
        }
        Response.Redirect("~/Admin/ManageUser.aspx");
    }

}