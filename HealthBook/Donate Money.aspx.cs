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
            if (!IsPostBack)
            {
                DataTable subjects = new DataTable();

                SqlDataAdapter adapter = new SqlDataAdapter("SELECT DISTINCT [Cityname] FROM Cities ", con);
                adapter.Fill(subjects);

                con.Open();
                CityDropDownList.DataSource = subjects;
                CityDropDownList.DataTextField = "Cityname";
                CityDropDownList.DataValueField = "Cityname";
                CityDropDownList.DataBind();
                CityDropDownList.Items.Insert(0, new ListItem("Select", "NA"));

                con.Close();
            }
            SubmitButton.Enabled = false;
        }


        protected void SubmitButton_Click(object sender, EventArgs e)
        {


            string phone = String.Format("{0}", Request.Form["phone"]);

            g.generator();
                myCode = g.code;

                long PhoneNumber = long.Parse(phone);

            const string YourAccessKey = "tZOnx4JOynYBbpbtFjj7ktJQx"; // your access key here
            Client client = Client.CreateDefault(YourAccessKey);
            long Msisdn = PhoneNumber; // your phone number here
            MessageBird.Objects.Message message =
            client.SendMessage("HealthBook", myCode, new[] { Msisdn });


            SubmitButton.Attributes.Add("onclick", "return false;");
            
        }

        protected void verificationCodeTextBox_TextChanged(object sender, EventArgs e)
        {
         
        }

        protected void VerifyButton_Click(object sender, EventArgs e)
        {
            string n = String.Format("{0}", Request.Form["DateOfBirthTextBox"]);
            string p = String.Format("{0}", Request.Form["phone"]);

            string val = currencylist.Value;

            if (verificationCodeTextBox.Text == myCode)
            {
                #region insert to database

                SqlCommand cmd = new SqlCommand("Insert_Donation_Money", con);

                con.Open();

                cmd.Parameters.Add("@amount", SqlDbType.NVarChar).Value = AmountTextBox.Text;
                cmd.Parameters.Add("@Currencey", SqlDbType.VarChar).Value = val;

                cmd.Parameters.Add("@donationProgram", SqlDbType.VarChar).Value = DonationProgramDropDownList.SelectedItem.Text;
                cmd.Parameters.Add("@firstName", SqlDbType.NVarChar).Value = FirstNameTextBox.Text;

                cmd.Parameters.Add("@lastName", SqlDbType.NVarChar).Value = LastNameTextBox.Text;
                cmd.Parameters.Add("@phoneNumber", SqlDbType.NVarChar).Value = p;

                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = EmailTextBox.Text;
                cmd.Parameters.Add("@country", SqlDbType.NVarChar).Value = CountryTextBox.Text;

                cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = AddressTextBox.Text;
                cmd.Parameters.Add("@city", SqlDbType.NVarChar).Value = CityDropDownList.SelectedItem.Text;

                cmd.Parameters.Add("@dateOfBirth", SqlDbType.Date).Value = Convert.ToDateTime(n);
                cmd.Parameters.Add("@gender", SqlDbType.NVarChar).Value = GenderDropDownList.SelectedItem.Text;

                cmd.Parameters.Add("@job", SqlDbType.NVarChar).Value = JobTextBox.Text;
                cmd.Parameters.Add("@company", SqlDbType.NVarChar).Value = CompanyTextBox.Text;

                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                con.Close();



                #endregion
                Response.Redirect("Thank you.aspx");

            }

            else
            {
                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Invalid code the code is: ');" + myCode, true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void CompanyTextBox_TextChanged(object sender, EventArgs e)
        {
            SubmitButton.Enabled = true;
        }
    }
}