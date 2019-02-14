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
    public partial class usercart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Button3.Visible = false;
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("S.no");
                dt.Columns.Add("image");
                dt.Columns.Add("productname");
                dt.Columns.Add("size");
                dt.Columns.Add("color");
                dt.Columns.Add("Price");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("Totalprice");

                if (Request.QueryString["ProName"] != null)
                {
                    if (Session["buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        string name = Request.QueryString["ProName"];
                        String myquery = "select * from addproduct where productname='" + name + "'";
                        SqlDataAdapter da = new SqlDataAdapter(myquery, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["S.no"] = 1;
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["size"] = ds.Tables[0].Rows[0]["size"].ToString();
                        dr["color"] = ds.Tables[0].Rows[0]["color"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        int Price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                        int Quantity = Convert.ToInt32(Request.QueryString["Quantity"].ToString());
                        float tax = 0.18f;
                        float Totalprice = ((Price * Quantity) * tax) + (Price * Quantity);
                        dr["Totalprice"] = Totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[3].Text = "Totalamount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                        Session["final"] = grandtotal().ToString();
                        //Response.Redirect("MyCart.aspx");
                        Button3.Visible = true;

                    }
                    else
                    {
                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;
                        dr = dt.NewRow();
                        string name = Request.QueryString["ProName"];
                        String myquery = "select * from addproduct where productname='" + name + "'";
                        SqlDataAdapter da = new SqlDataAdapter(myquery, con);
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["S.no"] = sr + 1;
                        dr["image"] = ds.Tables[0].Rows[0]["image"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["productname"].ToString();
                        dr["size"] = ds.Tables[0].Rows[0]["size"].ToString();
                        dr["color"] = ds.Tables[0].Rows[0]["color"].ToString();
                        dr["Price"] = ds.Tables[0].Rows[0]["Price"].ToString();
                        dr["Quantity"] = Request.QueryString["Quantity"];
                        int Price = Convert.ToInt32(ds.Tables[0].Rows[0]["Price"].ToString());
                        int Quantity = Convert.ToInt32(Request.QueryString["Quantity"].ToString());
                        float tax = 0.18f;
                        float Totalprice = ((Price * Quantity) * tax) + (Price * Quantity);
                        dr["Totalprice"] = Totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();


                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[3].Text = "Totalamount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                        Session["final"] = grandtotal().ToString();
                        //Response.Redirect("MyCart.aspx");
                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                    if (GridView1.Rows.Count > 0)
                    {
                        GridView1.FooterRow.Cells[3].Text = "Totalamount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                        Session["final"] = grandtotal().ToString();
                    }
                }
                lblmsg.Text = GridView1.Rows.Count.ToString();
            }
        }
        private object grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            float gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + float.Parse(dt.Rows[i]["Totalprice"].ToString());
                i = i + 1;
            }
            return gtotal;
        }

        protected void GridView1_OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int srl;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["S.no"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                srl = Convert.ToInt32(qdata);
                if (sr == srl)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    break;
                }
            }
            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["S.no"] = i;
                dt.AcceptChanges();
            }
            Session["buyitems"] = dt;
            Response.Redirect("usercart.aspx");
        }

        protected void Button3_OnClick(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[7] {
                new DataColumn("email",typeof(string)),
                new DataColumn("ProName", typeof(string)),
                new DataColumn("Qnty",typeof(int)),
                new DataColumn("Price",typeof(float)),
                new DataColumn("TPrice",typeof(float)),
                new DataColumn("size",typeof(string)),
                new DataColumn("color",typeof(string)),

                //new DataColumn("image", typeof(string)),
                //new DataColumn("Status", typeof(string)),
            });
            foreach (GridViewRow row in GridView1.Rows)
            {
                string email = Session["user"].ToString();
                string ProName = row.Cells[2].Text;
                int Qnty = Convert.ToInt32(row.Cells[4].Text);
                float Price = float.Parse(row.Cells[3].Text);
                float TPrice = float.Parse(row.Cells[5].Text);
                string size = row.Cells[6].Text;
                string color = row.Cells[7].Text;
                //string image = row.Cells[2].Text;
                //string Status = (row.Cells[5].FindControl("Label1") as Label).Text;                
                dt.Rows.Add(email, ProName, Qnty, Price, TPrice,size,color);

            }
            if (dt.Rows.Count > 0)
            {
                SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con);
                sqlBulkCopy.DestinationTableName = "dbo.Orders";
                sqlBulkCopy.ColumnMappings.Add("email", "email");
                sqlBulkCopy.ColumnMappings.Add("ProName", "ProName");
                sqlBulkCopy.ColumnMappings.Add("Qnty", "Qnty");
                sqlBulkCopy.ColumnMappings.Add("Price", "Price");
                sqlBulkCopy.ColumnMappings.Add("TPrice", "TPrice");
                sqlBulkCopy.ColumnMappings.Add("size", "size");
                sqlBulkCopy.ColumnMappings.Add("color", "color");
                con.Open();
                sqlBulkCopy.WriteToServer(dt);
                con.Close();
            }
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Order Confirmed');", true);
            GridView1.DataSource = null;
            GridView1.DataBind();
            Button3.Visible = false;
        }
    }
}