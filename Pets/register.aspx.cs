using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Pets
{
    public partial class register1 : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnClick(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into register values('" + txtfirstname.Text + "','" + txtlastname.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtpincode.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + txtphone.Text + "','" + txtemail.Text + "','" + txtpassword.Text + "')", con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Register Successfully')", true);
                txtfirstname.Text = "";
                txtlastname.Text = "";
                txtaddress.Text = "";
                txtcity.Text = "";
                txtpincode.Text = "";
                txtphone.Text = "";
                txtemail.Text = "";
                txtpassword.Text = "";
            }
        }

        protected void txtemail_OnTextChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from register where email='" + txtemail.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Email already exists')", true);
                txtemail.Text = "";
            }
            con.Close();
        }
    }
}