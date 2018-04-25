using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Minor_Project_Admin_Default : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
 
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadminsubmit_Click(object sender, EventArgs e)
    {
        string gender = "";

        if (rdofemale.Checked)
        {
            gender = rdofemale.Text;
        }
        else if (rdomale.Checked)
        {
            gender = rdomale.Text;
        }


        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tbl_admin(admin_firstname,admin_lastname,admin_username,admin_password,admin_address1,admin_address2,admin_city,admin_state,admin_country,admin_phone,admin_mobile,admin_gender,admin_citizenshipno) values(@fname,@lname,@uname,@pass,@add1,@add2,@city,@state,@country,@phone,@mobile,@gender,@citizenshipno)";
        cmd.Parameters.AddWithValue("@fname", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@lname",txtlastname.Text);
        cmd.Parameters.AddWithValue("@uname", txtusername.Text);
        cmd.Parameters.AddWithValue("@pass", txtpassword.Text);
        cmd.Parameters.AddWithValue("@add1", txtaddress1.Text);
        cmd.Parameters.AddWithValue("@add2", txtaddress2.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@state", txtstate.Text);
        cmd.Parameters.AddWithValue("@country", txtcountry.Text);
        cmd.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Parameters.AddWithValue("@citizenshipno", txtcitizenshipnumber.Text);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();

        Response.Redirect("~/Admin/admin.aspx");
    }
}