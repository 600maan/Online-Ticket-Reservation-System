using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_EditAdmin : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void btnsubmitadmindetails_Click(object sender, EventArgs e)
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
        cmd.Parameters.AddWithValue("@fname", txtfirstname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlastname.Text);
        cmd.Parameters.AddWithValue("@add1", txtaddress1.Text);
        cmd.Parameters.AddWithValue("@add2", txtaddress2.Text);
        cmd.Parameters.AddWithValue("@city", txtcity.Text);
        cmd.Parameters.AddWithValue("@state", txtstate.Text);
        cmd.Parameters.AddWithValue("@country", txtcountry.Text);
        cmd.Parameters.AddWithValue("@phone", txtphone.Text);
        cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Parameters.AddWithValue("@citizenshipno", txtcitizenshipnumber.Text);
        cmd.Parameters.AddWithValue("@username", txtusername.Text);
        cmd.Parameters.AddWithValue("@password", txtpassword.Text);

        if (btnsubmitadmindetails.Text == "Edit Admin")
        {
            //string adminid = "" + Session["adminid"];
            string adminid = Request.QueryString["AdminId"];
            if (adminid != null)
            {
                cmd.Parameters.AddWithValue("adminid", hfId.Value);
                cmd.Parameters.AddWithValue("@id", adminid);
                cmd.CommandText = "update tbl_admin set admin_firstname=@fname,admin_lastname=@lname,admin_username=@username,admin_password=@password,admin_address1=@add1,admin_address2=@add2,admin_city=@city,admin_state=@state,admin_country=@country,admin_phone=@phone,admin_mobile=@mobile,admin_gender=@gender,admin_citizenshipno=@citizenshipno where adminid=@id";
                cmd.Connection.Open();
                cmd.ExecuteNonQuery();
                cmd.Connection.Close();

                Response.Redirect("~/Admin/ManageAdmin.aspx");
            }
        }
        else
        {
            cmd.CommandText = "insert into tbl_admin(admin_firstname,admin_lastname,admin_username,admin_password,admin_address1,admin_address2,admin_city,admin_state,admin_country,admin_phone,admin_mobile,admin_gender,admin_citizenshipno) values(@fname,@lname,@username,@password,@add1,@add2,@city,@state,@country,@phone,@mobile,@gender,@citizenshipno)";
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            Response.Redirect("~/Admin/ManageAdmin.aspx");    
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string adminId = Request.QueryString["AdminId"];
            if (adminId == null)
            {
                btnsubmitadmindetails.Text = "New Admin";
            }
            else
            {
                btnsubmitadmindetails.Text = "Edit Admin";
                hfId.Value = adminId;

                string id = Request.QueryString["AdminId"];
                if (id != null)
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.CommandText = "select * from tbl_admin where adminid=@id";
                    cmd.Connection.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    DataTable tbl = new DataTable();
                    tbl.Load(rdr);
                    cmd.Connection.Close();
                    txtusername.Text = tbl.Rows[0]["admin_username"].ToString();
                    txtpassword.Text = tbl.Rows[0]["admin_password"].ToString();

                    txtfirstname.Text = tbl.Rows[0]["admin_firstname"].ToString();
                    txtlastname.Text = tbl.Rows[0]["admin_lastname"].ToString();
                    txtaddress1.Text = tbl.Rows[0]["admin_address1"].ToString();
                    txtaddress2.Text = tbl.Rows[0]["admin_address2"].ToString();
                    txtcity.Text = tbl.Rows[0]["admin_city"].ToString();
                    txtstate.Text = tbl.Rows[0]["admin_state"].ToString();
                    txtcountry.Text = tbl.Rows[0]["admin_country"].ToString();
                    txtphone.Text = tbl.Rows[0]["admin_phone"].ToString();
                    txtmobile.Text = tbl.Rows[0]["admin_mobile"].ToString();
                    if (tbl.Rows[0]["admin_gender"].ToString() == "Male")
                    {
                        rdomale.Checked = true;
                    }
                    else
                    {
                        rdofemale.Checked = true;
                    }
                    txtcitizenshipnumber.Text = tbl.Rows[0]["admin_citizenshipno"].ToString();


                }
            }
        }


    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ManageAdmin.aspx");
    }
}