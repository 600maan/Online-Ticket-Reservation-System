using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_UserCRUD_AddUser : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnusersubmit_Click(object sender, EventArgs e)
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
        cmd.CommandText = "insert into tbl_user(first_name,last_name,address1,address2,city,state,country,phone,mobile,email,ref_firstname,ref_lastname,ref_email,gender,ref_phone) values(@fname,@lname,@add1,@add2,@city,@state,@country,@phone,@mobile,@email,@reffirstname,@reflastname,@refemail,@gender,@refphone)";

        
        cmd.Parameters.AddWithValue("@fname", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlastname.Text);
        cmd.Parameters.AddWithValue("@add1", txtaddress1.Text);
        cmd.Parameters.AddWithValue("@add2", txtaddress2.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@state", txtstate.Text);
        cmd.Parameters.AddWithValue("@country", txtcountry.Text);
        cmd.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@reffirstname", txtreffirstname.Text);
        cmd.Parameters.AddWithValue("@reflastname", txtreflastname.Text);
        cmd.Parameters.AddWithValue("@refemail", txtrefemail.Text);
        cmd.Parameters.AddWithValue("@refphone", txtrefphone.Text);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();

        SqlCommand cmd1 = conn.CreateCommand();
        cmd1.CommandType = CommandType.Text;
        cmd1.Parameters.AddWithValue("@fname", txtfirstname.Text);
        cmd1.Parameters.AddWithValue("@lname", txtlastname.Text);
        cmd1.Parameters.AddWithValue("@add1", txtaddress1.Text);
        cmd1.Parameters.AddWithValue("@add2", txtaddress2.Text);
        cmd1.Parameters.AddWithValue("@city", txtcity.Text);
        cmd1.Parameters.AddWithValue("@state", txtstate.Text);
        cmd1.Parameters.AddWithValue("@country", txtcountry.Text);
        cmd1.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd1.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd1.Parameters.AddWithValue("@email", txtemail.Text);
        cmd1.Parameters.AddWithValue("@reffirstname", txtreffirstname.Text);
        cmd1.Parameters.AddWithValue("@reflastname", txtreflastname.Text);
        cmd1.Parameters.AddWithValue("@refemail", txtrefemail.Text);
        cmd1.Parameters.AddWithValue("@refphone", txtrefphone.Text);
        cmd1.Parameters.AddWithValue("@gender", gender);
        cmd1.CommandText = "select userid from tbl_user where first_name=@fname AND last_name=@lname AND ref_phone=@refphone";
        cmd1.Connection.Open();
        SqlDataReader rdr = cmd1.ExecuteReader();
        DataTable tbl = new DataTable();
        tbl.Load(rdr);
        cmd1.Connection.Close();
        string userid = tbl.Rows[0]["userid"].ToString();

        SqlCommand cmd2 = conn.CreateCommand();
        cmd2.CommandType = CommandType.Text;
        cmd2.Parameters.AddWithValue("@id", userid);
        cmd2.Parameters.AddWithValue("@account_no", txtfirstname.Text);
        cmd2.Parameters.AddWithValue("@pin", txtfirstname.Text);
        cmd2.Parameters.AddWithValue("@balance", 50000);
        cmd2.CommandText = "insert into tbl_bank(userid,account_no,pin,balance) values(@id,@account_no,@pin,@balance)";
        cmd2.Connection.Open();
        cmd2.ExecuteNonQuery();
        cmd2.Connection.Close();

        Response.Redirect("~/Admin/admin.aspx");
    }
}
