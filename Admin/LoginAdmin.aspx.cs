using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Admin_LoginAdmin : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {

        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select adminid from tbl_admin where admin_username=@uname and admin_password=@pass";
        cmd.Parameters.AddWithValue("@uname", txtusername.Text);
        cmd.Parameters.AddWithValue("@pass", txtpassword.Text);
        cmd.Connection.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
        if (rdr.HasRows)
        {
            Response.Redirect("admin.aspx");

        }
        else
        {
            lblerror.Text = "Invalid Username Or password";
        }
        cmd.Connection.Close();
     
    }
}