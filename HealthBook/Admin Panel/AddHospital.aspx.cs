using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace HealthBook.Admin_Panel
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            try
                {
                    SqlCommand cmd = new SqlCommand("Insert_Hospitals", con);

                    con.Open();

                    cmd.Parameters.Add("@hospitalName", SqlDbType.NVarChar).Value = HospitalNameTextBox.Text;
                    cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = EmailTextBox.Text;

                    //cmd.Parameters.Add("@phoneNumber", SqlDbType.VarChar).Value = PhoneNumberTextBox.Text;
                    cmd.Parameters.Add("@password", SqlDbType.NVarChar).Value = PasswordTextBox.Text;

                    cmd.Parameters.Add("@userName", SqlDbType.VarChar).Value = UserNameTextBox.Text;
                    cmd.Parameters.Add("@location", SqlDbType.NVarChar).Value = LocationTextBox.Text;


                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception)
                {

                    throw;
                }

        }



    }
}