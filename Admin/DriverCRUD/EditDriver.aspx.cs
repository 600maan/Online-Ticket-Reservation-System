using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class Admin_EditDriver : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["DriverId"];

            if (id != null)
            {
                SqlCommand cmd = conn.CreateCommand();
               
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from tbl_driver where driverid=@id";
                cmd.Parameters.AddWithValue("@id", id);
              
             
                cmd.Connection.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                DataTable tbl = new DataTable();
                tbl.Load(rdr);
                cmd.Connection.Close();
                txtfirstname.Text = tbl.Rows[0]["firstname"].ToString();
                txtlastname.Text = tbl.Rows[0]["lastname"].ToString();
                txtaddress1.Text = tbl.Rows[0]["address1"].ToString();
                txtaddress2.Text = tbl.Rows[0]["address2"].ToString();
                txtcity.Text = tbl.Rows[0]["city"].ToString();
                txtstate.Text = tbl.Rows[0]["state"].ToString();
                txtcountry.Text = tbl.Rows[0]["country"].ToString();
                txtphone.Text = tbl.Rows[0]["phone"].ToString();
                txtmobile.Text = tbl.Rows[0]["mobile"].ToString();
                txtlicense.Text = tbl.Rows[0]["license"].ToString();
                txtcitizenshipno.Text = tbl.Rows[0]["citizenshipno"].ToString();

               // txtemail.Text = tbl.Rows[0]["mobile"].ToString();
              //  txtreferencefirstname.Text = tbl.Rows[0]["gender"].ToString();
               

            }

        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        string id2 = Request.QueryString["DriverId"];
        if (id2 != null)
        {
            cmd.CommandText = "update tbl_driver set firstname=@fname,lastname=@lname,address1=@addr1,address2=@addr2,city=@city,state=@state,country=@country,phone=@phone,mobile=@mobile,license=@lcn,citizenshipno=@ctznshpno where driverid=@id2";

            cmd.Parameters.AddWithValue("@id2", id2);
            cmd.Parameters.AddWithValue("@fname", txtfirstname.Text);
            cmd.Parameters.AddWithValue("@lname", txtlastname.Text);
            cmd.Parameters.AddWithValue("@addr1", txtaddress1.Text);
            cmd.Parameters.AddWithValue("@addr2", txtaddress2.Text);
            cmd.Parameters.AddWithValue("@city", txtcity.Text);
            cmd.Parameters.AddWithValue("@state", txtstate.Text);
            cmd.Parameters.AddWithValue("@country", txtcountry.Text);
              cmd.Parameters.AddWithValue("@mobile", txtmobile.Text);
            cmd.Parameters.AddWithValue("@phone", txtphone.Text);
          

           
            cmd.Parameters.AddWithValue("@lcn", txtlicense.Text);
            cmd.Parameters.AddWithValue("@ctznshpno", txtcitizenshipno.Text);
          



            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
        Response.Redirect("~/Admin/ManageDriver.aspx");

    }
}