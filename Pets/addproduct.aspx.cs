using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace Pets
{
    public partial class addproduct : System.Web.UI.Page
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
                    DropDownList1.Items.Insert(0,
                        new System.Web.UI.WebControls.ListItem("---- Select Category ----", "-1"));
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void OnClick(object sender, EventArgs e)
        {
            string filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/images/") + filename);
            string filePath = "~/images/" + filename;

            SqlCommand cmd = new SqlCommand(
                "insert into addproduct values('" + DropDownList1.SelectedItem.Text + "','" +
                DropDownList2.SelectedItem.Text + "','" + txtproductname.Text + "','" +
                txtdescription.Text.Replace("'", "''") + "','" +
                txtprice.Text + "','" + txtQuantity.Text + "','" + filePath + "','" + txtsize.Text + "','" +
                txtcolor.Text + "')", con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Product Added Successfully')", true);
                DropDownList1.SelectedValue = "-1";
                DropDownList2.SelectedValue = "-1";
                txtproductname.Text = "";
                txtdescription.Text = "";
                txtprice.Text = "";
                txtQuantity.Text = "";
                txtsize.Text = "";
                txtcolor.Text = "";
            }
        }

        protected void DropDownList1_OnTextChanged(object sender, EventArgs e)
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select * from addsubcategory where category='" + DropDownList1.SelectedItem.Text + "'", con);
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);
            DropDownList2.DataSource = ds1;
            DropDownList2.DataTextField = "subcategory";
            DropDownList2.DataValueField = "subcategory";
            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, new System.Web.UI.WebControls.ListItem("---- Select Sub Category ----", "-1"));
        }
    }
}