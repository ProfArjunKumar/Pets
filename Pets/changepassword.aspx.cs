using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Pets
{
    public partial class changepassword : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] != null)
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
                    "select * from admin where username='" + Session["admin"].ToString() + "' and password='" +
                    txtoldpassword.Text + "'", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count>0)
            {
                if (txtnewpassword.Text==txtconfirmpassword.Text)
                {
                    SqlCommand cmd=new SqlCommand("update admin set password='"+txtconfirmpassword.Text+"'",con);
                    con.Open();
                    int i=cmd.ExecuteNonQuery();
                    con.Close();
                    if (i==1)
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