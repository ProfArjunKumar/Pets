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
    public partial class index1 : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_OnItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("homeuserview.aspx?id=" + e.CommandArgument.ToString());
        }
        protected void DataList3_OnItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("homeuserview.aspx?id=" + e.CommandArgument.ToString());
        }

        protected void DataList4_OnItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("homeuserview.aspx?id=" + e.CommandArgument.ToString());
        }

        protected void DataList2_OnItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("homeuserview.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}