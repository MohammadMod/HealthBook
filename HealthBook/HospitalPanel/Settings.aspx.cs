using MessageBird;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook.HospitalPanel
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                try
                {
                    String connectionString = WebConfigurationManager.ConnectionStrings["con"].ConnectionString;
                    SqlConnection con = new SqlConnection(connectionString);
                    SqlCommand cmd = new SqlCommand("Default_message_view", con);
                    cmd.CommandType = CommandType.StoredProcedure;


                    // Add parameters
                    cmd.Parameters.AddWithValue("@hospitalname", Session["username"].ToString());



                    con.Open();
                    SqlDataReader result = cmd.ExecuteReader();
                    result.Read();
                    if (result.HasRows)
                    {
                        Label1.Text = result.GetString(0);

                    }
                }
                catch (Exception)
                {

                    Response.Redirect("..//Login.aspx");
                }
               
            }
        }        

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

            SqlCommand cmd = new SqlCommand("Update_Default_Message", conn);
            conn.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@hospital_Name", Session["username"].ToString());
            cmd.Parameters.AddWithValue("@default_Message", TextBox1.Text);
            
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("Settings.aspx");
        }
    }
}