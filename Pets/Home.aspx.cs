using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pets
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"]!=null)
            {
                
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void DataList1_OnItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("userview.aspx?id=" + e.CommandArgument.ToString());
        }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("userview.aspx?id=" + e.CommandArgument.ToString());
        }

        protected void DataList3_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("userview.aspx?id=" + e.CommandArgument.ToString());
        }

        protected void DataList4_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("userview.aspx?id=" + e.CommandArgument.ToString());
        }
    }
}