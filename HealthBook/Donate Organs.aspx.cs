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
    public partial class Donate_Organs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Visible = true;
                //viewOrgansForm.Visible = false;
            }
        }




        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Insert_Organs", con);

                con.Open();

                cmd.Parameters.Add("@firstName", SqlDbType.NVarChar).Value = FirstNameTextBox.Text;
                cmd.Parameters.Add("@lastName", SqlDbType.VarChar).Value = LastNameTextBox.Text;

                cmd.Parameters.Add("@phoneNumber", SqlDbType.VarChar).Value = PhoneNumberTextBox.Text;
                cmd.Parameters.Add("@email", SqlDbType.NVarChar).Value = EmailTextBox.Text;

                cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = GenderDropDownList.SelectedItem.Text;
                cmd.Parameters.Add("@address", SqlDbType.NVarChar).Value = AddressTextBox.Text;


                //cmd.Parameters.Add("@dateOfBirth", SqlDbType.NVarChar).Value = DateOfBirthTextBox.Text;
                cmd.Parameters.Add("@bloodGroup", SqlDbType.VarChar).Value = BloodTypeDropDownList.SelectedItem.Text;

                cmd.Parameters.Add("@city", SqlDbType.VarChar).Value = CityTextBox.Text;
                //cmd.Parameters.Add("@organs", SqlDbType.NVarChar).Value = OrgansDropDownList.SelectedItem.Text;

                cmd.Parameters.Add("@signature", SqlDbType.VarChar).Value = SignatureTextBox.Text;
                cmd.Parameters.Add("@bloodDoner", SqlDbType.NVarChar).Value = BloodAnswerDropDownList.SelectedItem.Text;

                cmd.Parameters.Add("@usedOrgansFor", SqlDbType.VarChar).Value = UseOrgansForDropDownList0.SelectedItem.Text;


                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception)
            {

                throw;
            }
            if (GenderDropDownList.SelectedIndex == 0)
            {
                Label1.Text = "Please select your gender";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }

        }

        protected void AllOrganDonerDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if (AllOrganDonerDropDownList.SelectedIndex!=0)
            //{
            //    viewOrgansForm.Visible = true;
            //}
            //else
            //{
            //    viewOrgansForm.Visible = false;
            //}
        }
    }
}