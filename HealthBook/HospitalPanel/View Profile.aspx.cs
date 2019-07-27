using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook.HospitalPanel
{
    public partial class View_Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IDLabel.Text = Application["id"].ToString();
                FnameLabel.Text = Application["fname"].ToString();
                LnameLabel.Text = Application["lname"].ToString();
                Label4.Text = Application["phonenumber"].ToString();
                Label5.Text = Application["emailtxt"].ToString();
                Label6.Text = Application["gender"].ToString();
                Label7.Text = Application["address"].ToString();
                Label8.Text = Application["dob"].ToString();
                Label9.Text = Application["bloodgroup"].ToString();
                Label10.Text = Application["city"].ToString();
                Label11.Text = Application["organ"].ToString();
                //Label12.Text = Application["signature"].ToString();
                //Label13.Text = Application["blooddooner"].ToString();
                //Label14.Text = Application["useorganfor"].ToString();
                //Label15.Text = Application["date"].ToString();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {

                SqlCommand cmd = new SqlCommand("Edit_organ_time", con);
                cmd.CommandType = CommandType.StoredProcedure;

                con.Open();
                cmd.Parameters.Add("@donated", SqlDbType.Bit).Value = 1;
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}