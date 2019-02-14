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
    public partial class login : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_OnClick(object sender, EventArgs e)
        {
            if (txtemail.Text != "" && txtpassword.Text != "")
            {
                SqlDataAdapter da1 =
                    new SqlDataAdapter(
                        "select * from admin where username='" + txtemail.Text + "' and password='" + txtpassword.Text +
                        "'", con);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (dt1.Rows.Count > 0)
                {
                    Session["admin"] = txtemail.Text;
                    Response.Redirect("addproduct.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                        "alert('Invaild Username and Password')", true);
                }

                SqlDataAdapter da =
                    new SqlDataAdapter(
                        "select * from register where email='" + txtemail.Text + "' and password='" + txtpassword.Text +
                        "'", con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["user"] = txtemail.Text;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                        "alert('Invaild Username and Password')", true);
                }
            }
            else if(txtemail.Text == "" || txtpassword.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                    "alert('Enter Username and Password')", true);
            }
        }
    }
}