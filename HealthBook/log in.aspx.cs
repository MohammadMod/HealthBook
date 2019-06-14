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
using System.Drawing;

namespace HealthBook
{
	public partial class Log_In : System.Web.UI.Page
	{

       public static string email = "";
       public static string username = "";
       public static string password = "";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void LogInButton_Click(object sender, EventArgs e)
        {
           

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

            SqlCommand cmd = new SqlCommand("login_search", con);
            con.Open();


            cmd.Parameters.AddWithValue("@email", EmailTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                email = dr[0].ToString();
                password = dr[1].ToString();
                username = dr[2].ToString();

                Session["username"] = dr[2].ToString();

                Label1.Text = dr[2].ToString();

                if (ReminderCheck.Checked)
                {
                    SaveCookie();
                }
            }
            else
            {
                Label1.Text = "incorrect username or password";
                Label1.ForeColor = Color.Red;
            }

            dr.Close();
            con.Close();

        }
        private void SaveCookie()
        {
            //Create a Cookie with a suitable Key.
            HttpCookie loginCookie = new HttpCookie("Login");
            //Set the Cookie value.
            loginCookie.Values["Name"] = email;
            loginCookie.Values["Password"] = password;
            loginCookie.Path = Request.ApplicationPath;
            //Set the Expiry date.
            loginCookie.Expires = DateTime.Now.AddDays(10);
            //Add the Cookie to Browser.
            Response.Cookies.Add(loginCookie);
        }
    }
}