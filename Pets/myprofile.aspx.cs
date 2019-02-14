using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace Pets
{
    public partial class myprofile : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from register where email='" + Session["user"].ToString() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        txtfirstname.Text = dr["firstname"].ToString();
                        txtlastname.Text = dr["lastname"].ToString();
                        txtaddress.Text = dr["address"].ToString();
                        txtcity.Text = dr["city"].ToString();
                        txtpincode.Text = dr["pincode"].ToString();
                        txtphone.Text = dr["phonenumber"].ToString();
                        txtemail.Text = dr["email"].ToString();
                    }
                    con.Close();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void OnClick(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(
                "update register set firstname='" + txtfirstname.Text + "',lastname='" + txtlastname.Text +
                "',address='" + txtaddress.Text + "',city='" + txtcity.Text + "',pincode='" + txtpincode.Text +
                "',phonenumber='" + txtphone.Text + "' where email='" + Session["user"] + "'", con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                 ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Updated Successfully')", true);
            }
        }
    }
}