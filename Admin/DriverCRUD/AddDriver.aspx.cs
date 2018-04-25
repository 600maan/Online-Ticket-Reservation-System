using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddDriver : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }


    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tbl_driver(firstname,lastname,address1,address2,city,state,country,phone,mobile,license,citizenshipno)values(@fname,@lname,@addr1,@addr2,@city,@state,@country,@phone,@mobile,@lcn,@ctznno)";
        cmd.Parameters.AddWithValue("@fname", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlastname.Text);
        cmd.Parameters.AddWithValue("@addr1", txtaddress1.Text);
        cmd.Parameters.AddWithValue("@addr2", txtaddress2.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@state", txtstate.Text);
        cmd.Parameters.AddWithValue("@country", txtcountry.Text);
        cmd.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@lcn", txtlicense.Text);
        cmd.Parameters.AddWithValue("@ctznno", txtcitizenshipno.Text);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        Response.Redirect("~/Admin/ManageDriver.aspx");

    }
}