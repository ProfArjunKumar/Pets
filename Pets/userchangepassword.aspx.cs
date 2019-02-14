using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pets
{
    public partial class userchangepassword : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] != null)
                {
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void OnClick(object sender, EventArgs e)
        {
            SqlDataAdapter da =
                new SqlDataAdapter(
                    "select * from register where email='" + Session["user"].ToString() + "' and password='" +
                    txtoldpassword.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (txtnewpassword.Text == txtconfirmpassword.Text)
                {
                    SqlCommand cmd =
                        new SqlCommand(
                            "update register set password='" + txtconfirmpassword.Text + "' where email='" +
                            Session["user"].ToString() + "'", con);
                    con.Open();
                    int i = cmd.ExecuteNonQuery();
                    con.Close();
                    if (i == 1)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Password updated Successfully')", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('New password and confirm not same')", true);
                }
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Invalid Old password')", true);
            }
        }
    }
}