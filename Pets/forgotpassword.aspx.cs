using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pets
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ecommerce"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_OnClick(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from register where email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (dt.Rows.Count > 0)
            {
                DataSet ds = new DataSet();
                con.Open();
                SqlCommand cmd1 = new SqlCommand("SELECT email,password FROM register Where email= '" + txtemail.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd1);
                da.Fill(ds);
                con.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    MailMessage Msg = new MailMessage();
                    // Sender e-mail address.
                    Msg.From = new MailAddress(txtemail.Text);
                    // Recipient e-mail address.
                    Msg.To.Add(txtemail.Text);
                    Msg.Subject = "Your Password Details";
                    MailAddress copy = new MailAddress("swank.inno@gmail.com");
                    Msg.CC.Add(copy);
                    Msg.Body = "Hi, <br/>Please check your Login Details<br/><br/>Your UserName is: " + ds.Tables[0].Rows[0]["email"] + "<br/><br/>Your Password is: " + ds.Tables[0].Rows[0]["password"] + "<br/><br/>";
                    Msg.IsBodyHtml = true;
                    // your remote SMTP server IP.
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.Credentials = new System.Net.NetworkCredential("swank.inno@gmail.com", "swank@12345");
                    smtp.EnableSsl = true;
                    smtp.Send(Msg);
                    //Msg = null;
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Your Password Details Sent to your mail');", true);
                    // Clear the textbox valuess
                    txtemail.Text = "";
                    Response.Redirect("login.aspx");
                }
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Enter correct emailid');", true);
                txtemail.Text = "";
            }
        }
    }
}