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
    public partial class addsubcategories : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["admin"] != null)
                {
                    SqlDataAdapter da = new SqlDataAdapter("select * from addcategories", con);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DropDownList1.DataSource = ds;
                    DropDownList1.DataTextField = "categories";
                    DropDownList1.DataValueField = "categories";
                    DropDownList1.DataBind();
                    DropDownList1.Items.Insert(0, new System.Web.UI.WebControls.ListItem("---- Select Category ----", "-1"));
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void OnClick(object sender, EventArgs e)
        {
            SqlCommand cmd =
                new SqlCommand(
                    "insert into addsubcategory values('" + DropDownList1.SelectedItem.Text + "','" +
                    txtsubcategories.Text + "')", con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Sub Category Added Successfully')", true);
                txtsubcategories.Text = "";
                DropDownList1.SelectedValue = "-1";
            }
        }
    }
}