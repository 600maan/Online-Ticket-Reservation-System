using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Minor_Project_User_newuser : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection("data source=.;initial catalog=TRS;integrated security=true");
   
    protected void btnsubmituserdetails_Click(object sender, EventArgs e)
    {


        SqlCommand cmd = conn.CreateCommand();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "insert into tbl_user(first_name,last_name,address1,address2,city,state,country,phone,mobile,email,ref_firstname,ref_lastname,ref_email,gender) values(@fname,@lname,@add1,@add2,@city,@state,@country,@phone,@mobile,@email,@rfname,@rlname,@remail,@gender)";
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = "insert into tbl_bank(account_no,pin,balance)values(@acc,@pin,@bal)"; 
        cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
        cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@add1", TextBox3.Text);
        cmd.Parameters.AddWithValue("@add2", TextBox4.Text);
        cmd.Parameters.AddWithValue("@city", TextBox5.Text);
        cmd.Parameters.AddWithValue("@state", TextBox6.Text);
        cmd.Parameters.AddWithValue("@country", TextBox7.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox8.Text);
        cmd.Parameters.AddWithValue("@mobile", TextBox9.Text);
        cmd.Parameters.AddWithValue("@email", TextBox10.Text);
        cmd.Parameters.AddWithValue("@rfname", TextBox12.Text);
        cmd.Parameters.AddWithValue("@rlname", TextBox14.Text);
        cmd.Parameters.AddWithValue("@remail", TextBox13.Text);
        cmd.Parameters.AddWithValue("@gender", TextBox11.Text);
        cmd1.Parameters.AddWithValue("@acc", TextBox15.Text);
        cmd1.Parameters.AddWithValue("@pin", TextBox16.Text);
        cmd1.Parameters.AddWithValue("@bal", TextBox17.Text);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        cmd1.Connection.Open();
        cmd1.ExecuteNonQuery();
        cmd1.Connection.Close();
        lbluser.Text = "Data Entered";
    
    }
}