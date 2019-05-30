using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook
{
    public partial class Donate_Money : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                //SqlCommand cmd = new SqlCommand("Insert_Donation_Money", con);

                //con.Open();

                //cmd.Parameters.Add("@amount", SqlDbType.NVarChar).Value = AmountTextBox.Text;
                //cmd.Parameters.Add("@Currencey", SqlDbType.VarChar).Value = CurrenceyTextBox.Text;

                //cmd.Parameters.Add("@donationProgram", SqlDbType.VarChar).Value = DonationProgramDropDownList.SelectedItem.Text;
                //cmd.Parameters.Add("@firstName", SqlDbType.NVarChar).Value = FirstNameTextBox.Text;

                //cmd.Parameters.Add("@lastName", SqlDbType.VarChar).Value = LastNameTextBox.Text;
                //cmd.Parameters.Add("@phoneNumber", SqlDbType.NVarChar).Value = PhoneNumberTextBox.Text;

                //cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = EmailTextBox.Text;
                //cmd.Parameters.Add("@country", SqlDbType.VarChar).Value = CountryTextBox.Text;

                //cmd.Parameters.Add("@address", SqlDbType.VarChar).Value = AddressTextBox.Text;
                //cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = CityTextBox.Text;

                //cmd.Parameters.Add("@dateOfBirth", SqlDbType.VarChar).Value = DateOfBirthTextBox.Text;
                //cmd.Parameters.Add("@gender", SqlDbType.NVarChar).Value = GenderDropDownList.SelectedItem.Text;

                //cmd.Parameters.Add("@job", SqlDbType.VarChar).Value = JobTextBox.Text;
                //cmd.Parameters.Add("@company", SqlDbType.NVarChar).Value = CompanyTextBox.Text;

                //cmd.CommandType = System.Data.CommandType.StoredProcedure;
                //cmd.ExecuteNonQuery();
                //con.Close();

                string phoneNum = PhoneNumberTextBox.Text;
                Response.Write("before: "+phoneNum);
                string FirstDigit = phoneNum.Substring(0, 1);

                if (FirstDigit=="0")
                {
                    phoneNum = phoneNum.Remove(0, 1);
                }

                Response.Write("After: " + phoneNum);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}