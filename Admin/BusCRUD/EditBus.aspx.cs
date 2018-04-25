using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_EditBus : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string busId = Request.QueryString["BusId"];
            if (busId == null)
            {
                btnsubmitbusdetails.Text = "New Bus";
            }
            else
            {
                btnsubmitbusdetails.Text = "Edit Bus";
                hfId.Value = busId;

                string id = Request.QueryString["busId"];
                if (id != null)
                {
                    SqlCommand cmd = conn.CreateCommand();
                    SqlCommand cmd1 = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd1.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.CommandText = "select * from tbl_bus where busid=@id";
                    cmd.Connection.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    DataTable tbl = new DataTable();
                    tbl.Load(rdr);
                    cmd.Connection.Close();
                    txtbusno.Text = tbl.Rows[0]["bus_no"].ToString();
                    txtbustype.Text = tbl.Rows[0]["bus_type"].ToString();
                    txtbusname.Text = tbl.Rows[0]["bus_name"].ToString();

                    txtmodelno.Text = tbl.Rows[0]["model_no"].ToString();

                    txtseatcapacity.Text = tbl.Rows[0]["seat_capacity"].ToString();
                    ddldriverid.SelectedValue = tbl.Rows[0]["driverid"].ToString();
                    ddlrouteid.SelectedValue = tbl.Rows[0]["routeid"].ToString();
                }



            }
        }
    }
    protected void btnsubmitbusdetails_Click(object sender, EventArgs e)
    {


        SqlCommand cmd = conn.CreateCommand();
        SqlCommand cmd1 = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd1.CommandType = CommandType.Text;

        cmd.Parameters.AddWithValue("@bno", txtbusno.Text);
        cmd.Parameters.AddWithValue("@btype", txtbustype.Text);
        cmd.Parameters.AddWithValue("@bname", txtbusname.Text);
        cmd.Parameters.AddWithValue("@bmodelno", txtmodelno.Text);
        cmd.Parameters.AddWithValue("@bseatcapacity", txtseatcapacity.Text);
        cmd.Parameters.AddWithValue("@did", ddldriverid.SelectedValue);
        cmd.Parameters.AddWithValue("@rid", ddlrouteid.SelectedValue);


        cmd1.Parameters.AddWithValue("@bno", txtbusno.Text);
        cmd1.Parameters.AddWithValue("@btype", txtbustype.Text);
        cmd1.Parameters.AddWithValue("@bname", txtbusname.Text);
        cmd1.Parameters.AddWithValue("@bmodelno", txtmodelno.Text);
        cmd1.Parameters.AddWithValue("@bseatcapacity", txtseatcapacity.Text);
        cmd1.Parameters.AddWithValue("@did", ddldriverid.SelectedValue);
        cmd1.Parameters.AddWithValue("@rid", ddlrouteid.SelectedValue);



        if (btnsubmitbusdetails.Text == "Edit Bus")
        {
            string busid = "" + Session["busid"];
            //string id2 = Request.QueryString["userId"];
            if (busid != null)
            {
                cmd.Parameters.AddWithValue("busid", hfId.Value);
                cmd1.Parameters.AddWithValue("@id2", busid);
                cmd1.CommandText = "update tbl_bus set bus_no=@bno,bus_type=@btype,seat_capacity=@bseatcapacity,bus_name=@bname,model_no=@bmodelno,driverid=@did,routeid=@rid where busid=@id2";
                cmd1.Connection.Open();
                cmd1.ExecuteNonQuery();
                cmd1.Connection.Close();
                Response.Redirect("~/Admin/ManageBus.aspx");
            }
        }
        else
        {
            cmd.CommandText = "insert into tbl_bus(bus_no,bus_type,seat_capacity,bus_name,model_no,driverid,routeid) values(@bno,@btype,@bseatcapacity,@bname,@bmodelno,@did,@rid)";

        }
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();

        Response.Redirect("~/Admin/ManageBus.aspx");


    }
}
