using MessageBird;
using System;
using System.Collections.Generic;
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
                        Label1.Text = result.GetString(0) + " " + result.GetString(0);

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

            const string YourAccessKey = "tZOnx4JOynYBbpbtFjj7ktJQx"; // your access key here
            Client client = Client.CreateDefault(YourAccessKey);
            long Msisdn = +9647503202798; // your phone number here
            MessageBird.Objects.Message message =
            client.SendMessage("HealthBook", "We Need Your Help", new[] { Msisdn });

            System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Message Sent successfully');", true);
        }
    }
}