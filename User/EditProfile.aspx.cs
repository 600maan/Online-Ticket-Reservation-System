using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_EditProfile : System.Web.UI.Page
{
    static int userid;
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
         if (!IsPostBack)
        {
            userid = (int)Session["userid"];
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from tbl_user where userid=@userid";
            cmd.Parameters.AddWithValue("@userid", userid);
            cmd.Connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            DataTable tbl = new DataTable();
            DataTable tbl1 = new DataTable();
            tbl.Load(rdr);
            cmd.CommandText = "select pin from tbl_bank where userid=@userid";
            rdr = cmd.ExecuteReader();
            tbl1.Load(rdr);
            cmd.Connection.Close();
            txtfname.Text = tbl.Rows[0]["first_name"].ToString();
            txtlname.Text = tbl.Rows[0]["last_name"].ToString();
            txtaddress1.Text = tbl.Rows[0]["address1"].ToString();
            txtaddress2.Text = tbl.Rows[0]["address2"].ToString();
            txtcity.Text = tbl.Rows[0]["city"].ToString();
            txtcountry.Text = tbl.Rows[0]["country"].ToString();
            txtemail.Text = tbl.Rows[0]["email"].ToString();
            //txtgender.Text = tbl.Rows[0]["gender"].ToString();
            if (tbl.Rows[0]["gender"].ToString() == "Male")
            {
                rdomale.Checked = true;
            }
            else
            {
                rdofemale.Checked = true;
            }
            txtmobile.Text = tbl.Rows[0]["mobile"].ToString();
            txtphone.Text = tbl.Rows[0]["phone"].ToString();
            txtreffname.Text = tbl.Rows[0]["ref_firstname"].ToString();
            txtreflname.Text = tbl.Rows[0]["ref_lastname"].ToString();
            txtrefemail.Text = tbl.Rows[0]["ref_email"].ToString();
            txtstate.Text = tbl.Rows[0]["state"].ToString();
            txtrefmobile.Text = tbl.Rows[0]["ref_phone"].ToString();
            txtpin.Text = tbl1.Rows[0]["pin"].ToString();
        }
        
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("User.aspx");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string gender = "";
        if (rdomale.Checked)
        {
            gender = rdomale.Text;
        }
        else if (rdofemale.Checked)
        {
            gender = rdofemale.Text;
        }
      

        //int userid =(int)Session["userid"];
        
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update tbl_user set first_name=@fname,last_name=@lname,address1=@add1,address2=@add2,city=@city,state=@state,country=@country,phone=@phone,mobile=@mobile,email=@email,ref_firstname=@rfname,ref_lastname=@rlname,ref_email=@remail ,gender=@gender,ref_phone=@rphone where userid=@userid";

        //cmd1.CommandText = "update tbl_user set first_name=@fname,last_name=@lname,address1=@add1,address2=@add2,city=@city,state=@state,country=@country,phone=@phone,mobile=@mobile,email=@email,ref_firstname=@rfname,ref_lastname=@rlname,ref_email=@remail,gender=@gender,ref_phone=@rphone where userid=@userid";
        cmd.Parameters.AddWithValue("@userid", userid);
        cmd.Parameters.AddWithValue("@fname", txtfname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlname.Text);
        cmd.Parameters.AddWithValue("@add1", txtaddress1.Text);
        cmd.Parameters.AddWithValue("@add2", txtaddress2.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@state", txtstate.Text);
        cmd.Parameters.AddWithValue("@country", txtcountry.Text);
        cmd.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@rfname", txtreffname.Text);
        cmd.Parameters.AddWithValue("@rlname", txtreflname.Text);
        cmd.Parameters.AddWithValue("@remail", txtrefemail.Text);
        cmd.Parameters.AddWithValue("@rphone", txtrefmobile.Text);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.CommandText = "update tbl_bank set pin=@pin where userid=@userid";
        cmd.Parameters.AddWithValue("@pin", txtpin.Text);
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        Response.Redirect("User.aspx");

    }

}