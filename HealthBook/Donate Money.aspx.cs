using MessageBird;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace HealthBook
{
    public partial class Donate_Money : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        Code_Generator g = new Code_Generator();
        static string myCode = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            g.generator();
             myCode = g.code;

            long PhoneNumber = long.Parse(PhoneNumberTextBox.Text);


            const string YourAccessKey = "NrCjD40h6gaCws2A0t0VEFVXW"; // your access key here
            Client client = Client.CreateDefault(YourAccessKey);
            long Msisdn = PhoneNumber; // your phone number here
            MessageBird.Objects.Message message =
            client.SendMessage("HealthBook", myCode, new[] { Msisdn });

            //System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('We Sent you a verify code please check your phone');", true);






        }

        protected void verificationCodeTextBox_TextChanged(object sender, EventArgs e)
        {
         
        }

        protected void VerifyButton_Click(object sender, EventArgs e)
        {
            if (verificationCodeTextBox.Text == myCode)
            {
                #region insert to database

                SqlCommand cmd = new SqlCommand("Insert_Donation_Money", con);

                con.Open();

                cmd.Parameters.Add("@amount", SqlDbType.NVarChar).Value = AmountTextBox.Text;
                cmd.Parameters.Add("@Currencey", SqlDbType.VarChar).Value = CurrenceyTextBox.Text;

                cmd.Parameters.Add("@donationProgram", SqlDbType.VarChar).Value = DonationProgramDropDownList.SelectedItem.Text;
                cmd.Parameters.Add("@firstName", SqlDbType.NVarChar).Value = FirstNameTextBox.Text;

                cmd.Parameters.Add("@lastName", SqlDbType.NVarChar).Value = LastNameTextBox.Text;
                cmd.Parameters.Add("@phoneNumber", SqlDbType.NVarChar).Value = PhoneNumberTextBox.Text;

                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = EmailTextBox.Text;
                cmd.Parameters.Add("@country", SqlDbType.NVarChar).Value = CountryTextBox.Text;

                cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = AddressTextBox.Text;
                cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = CityTextBox.Text;

                cmd.Parameters.Add("@dateOfBirth", SqlDbType.Date).Value = DateOfBirthTextBox.Text;
                cmd.Parameters.Add("@gender", SqlDbType.NVarChar).Value = GenderDropDownList.SelectedItem.Text;

                cmd.Parameters.Add("@job", SqlDbType.NVarChar).Value = JobTextBox.Text;
                cmd.Parameters.Add("@company", SqlDbType.NVarChar).Value = CompanyTextBox.Text;

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                con.Close();



                //string phoneNum = PhoneNumberTextBox.Text;
                //Response.Write("before: " + phoneNum);
                //string FirstDigit = phoneNum.Substring(0, 1);

                //if (FirstDigit == "0")
                //{
                //    phoneNum = phoneNum.Remove(0, 1);
                //}

                //Response.Write("After: " + phoneNum);
                #endregion
            }

            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Invalid code the code is: ');" + myCode, true);
            }
        }
    }
}