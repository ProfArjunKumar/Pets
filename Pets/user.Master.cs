using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Pets
{
    public partial class user : System.Web.UI.MasterPage
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {
                    con.Open();
                    SqlCommand cmd =
                        new SqlCommand("select * from register where email='" + Session["user"].ToString() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        LblUsername.Text = dr["firstname"].ToString();
                    }

                    con.Close();
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("index.aspx");
        }
    }
}