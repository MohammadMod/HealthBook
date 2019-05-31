using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Data;

namespace HealthBook
{
	public partial class Log_In : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                HttpCookie myCookie = Request.Cookies["savedCookie"];
                if (myCookie == null)
                    return;
                else
                    ReminderCheck.Checked = true;

                //ok - cookie is found.
                //Gracefully check if the cookie has the key-value as expected.
                if (!string.IsNullOrEmpty(myCookie.Values["userid"]))
                {
                    EmailTextBox.Text = myCookie.Values["userid"].ToString();

                }

                if (!string.IsNullOrEmpty(myCookie.Values["userpass"]))
                {
                    PasswordTextBox.Text = myCookie.Values["userpass"].ToString();

                }
            }
            catch
            {

            }
        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

                SqlCommand cmd = new SqlCommand("login_search", con);
                cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                bool remmeberMeChecked = ReminderCheck.Checked;

                if (remmeberMeChecked)
                    SaveCookie();

                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    FormsAuthentication.RedirectFromLoginPage(PasswordTextBox.Text, true);
                    Application["LoggedUserName"] = EmailTextBox.Text;
                    //Application.Add()
                    Response.Redirect("/");

                }
                else
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");

                    EmailTextBox.Text = "";
                    PasswordTextBox.Text = "";
                }

            }
            catch (Exception)
            {

                throw;
            }
        }
        private void SaveCookie()
        {
            try
            {
                //create a cookie
                HttpCookie myCookie = new HttpCookie("savedCookie");

                //Add key-values in the cookie
                if (EmailTextBox.Text != "")
                    myCookie.Values.Add("userid", EmailTextBox.Text);


                if (PasswordTextBox.Text != "")
                    myCookie.Values.Add("userpass", PasswordTextBox.Text);

                //Most important, write the cookie to client.
                Response.Cookies.Add(myCookie);
            }
            catch (Exception ex)
            {
                string message = ex.Message;
            }
        }
    }
}