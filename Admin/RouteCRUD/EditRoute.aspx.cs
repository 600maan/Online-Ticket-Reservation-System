using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_EditRoute : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["mainConn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string routeId = Request.QueryString["RouteId"];
            if (routeId == null)
            {
                btnsubmitroutedetails.Text = "New Route";
            }
            else
            {
                btnsubmitroutedetails.Text = "Edit Route";
                hfId.Value = routeId;

                string id = Request.QueryString["RouteId"];
                if (id != null)
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.Parameters.AddWithValue("@id", id);
                    cmd.CommandText = "select * from tbl_route where routeid=@id";
                    cmd.Connection.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    DataTable tbl = new DataTable();
                    tbl.Load(rdr);
                    cmd.Connection.Close();
                    txtfrom.Text = tbl.Rows[0]["from_des"].ToString();
                    txtto.Text = tbl.Rows[0]["to_des"].ToString();
                    txtfare.Text = tbl.Rows[0]["fare"].ToString();
                    txtdeparturetime.Text = tbl.Rows[0]["departure_time"].ToString();
                 
                }



            }
        }
    }

    protected void btnsubmitroutedetails_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = conn.CreateCommand();
        SqlCommand cmd2 = conn.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd2.CommandType = CommandType.Text;
        


        if (btnsubmitroutedetails.Text == "Edit Route")
        {
            string routeid = Request.QueryString["routeid"];
            Response.Write ( "" + routeid);
            //string id2 = Request.QueryString["RouteId"];
            lbltest.Text = routeid;
            Response.Write("" + lbltest.Text);
            if (routeid != null)
            {
                        //cmd.Parameters.AddWithValue("routeId", hfId.Value);
                         cmd2.Parameters.AddWithValue("@id2", routeid);
                        cmd2.CommandText="update tbl_route set from_des=@from_des,to_des=@to_des,departure_time=@depttime,fare=@fare where routeid=@id2";
                     
                        cmd2.Parameters.AddWithValue("@from_des", txtfrom.Text);
                        cmd2.Parameters.AddWithValue("@to_des", txtto.Text);
                        cmd2.Parameters.AddWithValue("@depttime", txtdeparturetime.Text);
                        cmd2.Parameters.AddWithValue("@fare", txtfare.Text);
      
                        cmd2.Connection.Open();
                        cmd2.ExecuteNonQuery();
                        cmd2.Connection.Close();
                        Response.Redirect("~/Admin/ManageRoute.aspx");
            }
        }
        else
        {
            cmd.CommandText = "insert into tbl_route(from_des,to_des,fare,departure_time) values(@from_des,@to_des,@fare,@depttime)";
            cmd.Parameters.AddWithValue("@from_des", txtfrom.Text);
            cmd.Parameters.AddWithValue("@to_des", txtto.Text);
            cmd.Parameters.AddWithValue("@depttime", txtdeparturetime.Text);
            cmd.Parameters.AddWithValue("@fare", txtfare.Text);

            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
 

        }

        Response.Redirect("~/Admin/ManageRoute.aspx");

    }
    }
