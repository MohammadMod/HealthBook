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
    public partial class View_profile_BD : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IDLabel.Text = Application["id"].ToString();
                FnameLabel.Text = Application["fname"].ToString();
                LnameLabel.Text = Application["lname"].ToString();
                Label9.Text = Application["phoneNum"].ToString();
                Label10.Text = Application["city"].ToString();
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
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = Application["id"].ToString();

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("View Blood Doners.aspx");
            }
        }
    }
}