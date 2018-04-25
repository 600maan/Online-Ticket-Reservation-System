using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_LoginUser : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "Select userid from tbl_bank where account_no=@account and pin=@pin";
        cmd.Parameters.AddWithValue("@account", txtaccount.Text);
        cmd.Parameters.AddWithValue("@pin", txtpin.Text);
        cmd.Connection.Open();
        SqlDataReader rdr = cmd.ExecuteReader();
            
        if (rdr.HasRows)
        {
            DataTable tbl = new DataTable();
            tbl.Load(rdr);
            int userid=tbl.Rows[0]["userid"].GetHashCode();
            Session["userid"] = userid;
            Response.Redirect("User.aspx");
            
        }
        else
        {
            lblerror.Text = "Your Account Number And Pin Number did not match";
        }
        cmd.Connection.Close();
        

    }
}