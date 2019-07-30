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
    public partial class Add_City : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert_city", con);

            con.Open();
            cmd.Parameters.Add("@cityname", SqlDbType.NVarChar).Value = TextBox1.Text;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text =  TextBox1.Text + "City added";
            TextBox1.Text = "";
        }
    }
}