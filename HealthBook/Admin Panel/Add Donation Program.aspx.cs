using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook.Admin_Panel
{
    public partial class Add_Donation_Program : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert_Donation_Program", con);

            con.Open();
            cmd.Parameters.Add("@d_program", SqlDbType.NVarChar).Value = TextBox1.Text;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = TextBox1.Text + ": Program added";
            TextBox1.Text = "";
        }
    }
}