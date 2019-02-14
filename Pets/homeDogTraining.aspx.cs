using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pets
{
    public partial class homeDogTraining : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_OnItemCommand(object source, DataListCommandEventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}