using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Minor_Project_Admin_EditUser : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void btnsubmituserdetails_Click(object sender, EventArgs e)
    {
        string gender="";

        if (rdofemale.Checked)
        {
            gender = rdofemale.Text;
        }
        else if (rdomale.Checked)
        {
            gender = rdomale.Text;
        }

        SqlCommand cmd = conn.CreateCommand();
        SqlCommand cmd1 = conn.CreateCommand();
        SqlCommand cmd2 = conn.CreateCommand();
        SqlCommand cmd3 = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd1.CommandType = CommandType.Text;
        cmd2.CommandType = CommandType.Text;
        cmd3.CommandType = CommandType.Text;

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
        cmd.Parameters.AddWithValue("@rfname", txtreferencefirstname.Text);
        cmd.Parameters.AddWithValue("@rlname", txtreferencelastname.Text);
        cmd.Parameters.AddWithValue("@remail", txtreferenceemail.Text);
        cmd.Parameters.AddWithValue("@rphone", txtreferencephone.Text);
       // cmd.Parameters.AddWithValue("@gender", txtgender.Text);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd1.Parameters.AddWithValue("@acc", txtaccountnumber.Text);
        cmd1.Parameters.AddWithValue("@pin", txtpinnumber.Text);
        cmd1.Parameters.AddWithValue("@bal", txtbalance.Text);

        cmd2.Parameters.AddWithValue("@fname", txtfirstname.Text);
        cmd2.Parameters.AddWithValue("@lname", txtlastname.Text);
        cmd2.Parameters.AddWithValue("@add1", txtaddress1.Text);
        cmd2.Parameters.AddWithValue("@add2", txtaddress2.Text);
        cmd2.Parameters.AddWithValue("@city", txtcity.Text);
        cmd2.Parameters.AddWithValue("@state", txtstate.Text);
        cmd2.Parameters.AddWithValue("@country", txtcountry.Text);
        cmd2.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd2.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd2.Parameters.AddWithValue("@email", txtemail.Text);
        cmd2.Parameters.AddWithValue("@rfname", txtreferencefirstname.Text);
        cmd2.Parameters.AddWithValue("@rlname", txtreferencelastname.Text);
        cmd2.Parameters.AddWithValue("@remail", txtreferenceemail.Text);
        cmd2.Parameters.AddWithValue("@rphone", txtreferencephone.Text);
        cmd2.Parameters.AddWithValue("@gender", gender);

        cmd3.Parameters.AddWithValue("@acc", txtaccountnumber.Text);
        cmd3.Parameters.AddWithValue("@pin", txtpinnumber.Text);
        cmd3.Parameters.AddWithValue("@bal", txtbalance.Text);


        
        if (btnsubmituserdetails.Text == "Edit User")
        {
            string userid =""+Session["userid"];
            //string id2 = Request.QueryString["userId"];
            if (userid != null)
            {
                cmd.Parameters.AddWithValue("userid", hfId.Value);
               cmd2.Parameters.AddWithValue("@id2", userid);
                cmd3.Parameters.AddWithValue("@id3",userid);

                cmd2.CommandText="update tbl_user set first_name=@fname,last_name=@lname,address1=@add1,address2=@add2,city=@city,state=@state,country=@country,phone=@phone,mobile=@mobile,email=@email,ref_firstname=@rfname,ref_lastname=@rlname,ref_email=@remail ,gender=@gender,ref_phone=@rphone where userid=@id2";

                cmd3.CommandText= "update tbl_bank set account_no=@acc,pin=@pin,balance=@bal where userid=@id3";
                cmd2.Connection.Open();
                cmd2.ExecuteNonQuery();
                cmd2.Connection.Close();
                cmd3.Connection.Open();
                cmd3.ExecuteNonQuery();
                cmd3.Connection.Close();
               
               Response.Redirect("~/Admin/ManageUser.aspx");
            }
        }
        else
        {
            cmd.CommandText = "insert into tbl_user(first_name,last_name,address1,address2,city,state,country,phone,mobile,email,ref_firstname,ref_lastname,ref_email,gender,ref_phone) values(@fname,@lname,@add1,@add2,@city,@state,@country,@phone,@mobile,@email,@rfname,@rlname,@remail,@gender,@rphone)";

            cmd1.CommandText = "insert into tbl_bank(userid,account_no,pin,balance)values(@userid,@acc,@pin,@bal)";

        }  
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd = conn.CreateCommand();
        cmd.CommandText = "Select @@identity";
        string id = cmd.ExecuteScalar().ToString();
        cmd.Connection.Close();
        cmd1.Parameters.AddWithValue("@userId", id);
        cmd1.Connection.Open();
        cmd1.ExecuteNonQuery();
        cmd1.Connection.Close();
      
        Response.Redirect("~/Admin/ManageUser.aspx");

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string userId = Request.QueryString["UserId"];
            if (userId == null)
            {
                btnsubmituserdetails.Text = "New User";
            }
            else
            {
                btnsubmituserdetails.Text = "Edit User";
                hfId.Value = userId;

                string id = Request.QueryString["userId"];
                if (id != null)
                {
                    SqlCommand cmd = conn.CreateCommand();
                    SqlCommand cmd1 = conn.CreateCommand();

                    SqlCommand cmd2 = conn.CreateCommand();
                    SqlCommand cmd3 = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd1.CommandType = CommandType.Text;

                    cmd2.CommandType = CommandType.Text;
                    cmd3.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd1.Parameters.AddWithValue("@id1", id);
                    cmd.CommandText = "select * from tbl_user where userid=@id";
                    cmd1.CommandText = "select * from tbl_bank where userid=@id1";
                    cmd1.Connection.Open();
                    SqlDataReader rdr1 = cmd1.ExecuteReader();
                    DataTable tbl1 = new DataTable();
                    tbl1.Load(rdr1);
                    cmd1.Connection.Close();
                    cmd.Connection.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    DataTable tbl = new DataTable();
                    tbl.Load(rdr);
                    cmd.Connection.Close();
                    txtfirstname.Text = tbl.Rows[0]["first_name"].ToString();
                    txtlastname.Text = tbl.Rows[0]["last_name"].ToString();
                    txtaddress1.Text = tbl.Rows[0]["address1"].ToString();
                    txtaddress2.Text = tbl.Rows[0]["address2"].ToString();
                    txtcity.Text = tbl.Rows[0]["city"].ToString();
                    txtstate.Text = tbl.Rows[0]["state"].ToString();
                    txtcountry.Text = tbl.Rows[0]["country"].ToString();
                    txtphone.Text = tbl.Rows[0]["phone"].ToString();
                    txtmobile.Text = tbl.Rows[0]["mobile"].ToString();
                    txtemail.Text = tbl.Rows[0]["email"].ToString();
                    if (tbl.Rows[0]["gender"].ToString() == "Male")
                    {
                        rdomale.Checked = true;
                    }
                    else
                    {
                        rdofemale.Checked = true;
                    }
                        
                    
                    txtreferencefirstname.Text = tbl.Rows[0]["ref_firstname"].ToString();
                    txtreferencelastname.Text = tbl.Rows[0]["ref_lastname"].ToString();
                    txtreferenceemail.Text = tbl.Rows[0]["ref_email"].ToString();
                    txtreferencephone.Text = tbl.Rows[0]["ref_phone"].ToString();
                    txtaccountnumber.Text = tbl1.Rows[0]["account_no"].ToString();
                    txtpinnumber.Text = tbl1.Rows[0]["pin"].ToString();
                    txtbalance.Text = tbl1.Rows[0]["balance"].ToString();

                }
            }
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageUser.aspx");
    }
}