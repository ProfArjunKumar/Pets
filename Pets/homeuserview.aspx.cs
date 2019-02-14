using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pets
{
    public partial class homeuserview : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    string id = Request.QueryString["id"].ToString();
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from addproduct where id='" + id + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        lblname.Text = dr["productname"].ToString();
                        lblprice.Text = dr["price"].ToString();
                        lbldetil.Text = dr["description"].ToString();
                        lblsize.Text = dr["size"].ToString();
                        lblcolor.Text = dr["color"].ToString();
                        Image1.ImageUrl = dr["image"].ToString();
                    }
                    con.Close();
                }
                else
                {
                    Response.Redirect("index.aspx");
                }
            }
        }

        protected void Button1_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void DataList1_OnItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("userview.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}