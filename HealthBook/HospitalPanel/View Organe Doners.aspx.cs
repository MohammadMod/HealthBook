using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using MessageBird;

namespace HealthBook.HospitalPanel
{
    public partial class View_Organe_Doners : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        static string default_message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewOrganDoners();
                viewCities(cityDropDownList);

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
                        default_message = result.GetString(0);

                    }
                }
                catch (Exception)
                {

                    Response.Redirect("..//Login.aspx");
                }
            }
        }

        public void viewCities(DropDownList cities)
        {
            DataTable subjects = new DataTable();

            SqlDataAdapter adapter = new SqlDataAdapter("SELECT DISTINCT [City] FROM Organs ", conn);
            adapter.Fill(subjects);

            conn.Open();
            cities.DataSource = subjects;
            cities.DataTextField = "City";
            cities.DataValueField = "City";
            cities.DataBind();
            cities.Items.Insert(0, new ListItem("Select", "NA"));

            conn.Close();
        }

        protected void SelectOrganDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (SelectOrganDropDownList.SelectedIndex == 0)
            {
                ViewOrganDoners();
            }
            else
            {
                SqlCommand cmdaa = new SqlCommand("View_Organ_Doners_by_organ", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmdaa);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.SelectCommand.Parameters.AddWithValue("@selectedOrgan", SelectOrganDropDownList.SelectedItem.Text);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ViewOrganDonersGridView.DataSource = ds;
                ViewOrganDonersGridView.DataBind();
            }
            
        }

        protected void BloodGroupDropDownList0_SelectedIndexChanged(object sender, EventArgs e)
        {

            //if (BloodGroupDropDownList0.SelectedIndex == 0)
            //{
            //    ViewOrganDoners();
            //}
            //else
            //{
            //    SqlCommand cmdaa = new SqlCommand("View_Organ_Doners_by_Blood_Group", conn);
            //    SqlDataAdapter da = new SqlDataAdapter(cmdaa);
            //    da.SelectCommand.CommandType = CommandType.StoredProcedure;

            //    da.SelectCommand.Parameters.AddWithValue("@selectedBlood", BloodGroupDropDownList0.SelectedItem.Text);
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);
            //    ViewOrganDonersGridView.DataSource = ds;
            //    ViewOrganDonersGridView.DataBind();
            //}

        }
        protected void OrganForDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {


            if (OrganForDropDownList.SelectedIndex == 0)
            {
                ViewOrganDoners();
            }
            else
            {
                SqlCommand cmdaa = new SqlCommand("View_Organ_Doners_by_Used_For", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmdaa);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.SelectCommand.Parameters.AddWithValue("@usedOrganFor", OrganForDropDownList.SelectedItem.Text);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ViewOrganDonersGridView.DataSource = ds;
                ViewOrganDonersGridView.DataBind();
            }
        }

        public void ViewOrganDoners()
        {
            try
            {

                conn.Open();
                SqlCommand cmd = new SqlCommand("View_Organ_Doners", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                conn.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ViewOrganDonersGridView.DataSource = ds;
                    ViewOrganDonersGridView.DataBind();
                }
                else
                {
                    ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                    ViewOrganDonersGridView.DataSource = ds;
                    ViewOrganDonersGridView.DataBind();
                    int columncount = ViewOrganDonersGridView.Rows[0].Cells.Count;
                    ViewOrganDonersGridView.Rows[0].Cells.Clear();
                    ViewOrganDonersGridView.Rows[0].Cells.Add(new TableCell());
                    ViewOrganDonersGridView.Rows[0].Cells[0].ColumnSpan = columncount;
                    ViewOrganDonersGridView.Rows[0].Cells[0].Text = "No Records Found";
                }

            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void ViewOrganDonersGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            GridViewRow row = ViewOrganDonersGridView.SelectedRow;
            string PhoneNumberIngrid = row.Cells[5].Text;
            long PhoneNumber = long.Parse(PhoneNumberIngrid);


            const string YourAccessKey = "tZOnx4JOynYBbpbtFjj7ktJQx"; // your access key here
            Client client = Client.CreateDefault(YourAccessKey);
            long Msisdn = PhoneNumber; // your phone number here
            MessageBird.Objects.Message message =
            client.SendMessage("Healthbok", default_message + " Hospital name: "+ Session["username"].ToString(), new[] { Msisdn });

            #region  save_message


            GridViewRow row1 = ViewOrganDonersGridView.SelectedRow;

            string sent_to = row1.Cells[3].Text + " " + row1.Cells[4].Text;
            string from_hospital = Session["username"].ToString();
            string userid = row1.Cells[2].Text;



            SqlCommand cmd = new SqlCommand("insert_sent_message", conn);

            conn.Open();

            cmd.Parameters.Add("@sent_to", SqlDbType.NVarChar).Value = sent_to;
            cmd.Parameters.Add("@from_hospital", SqlDbType.VarChar).Value = from_hospital;

            cmd.Parameters.Add("@message", SqlDbType.VarChar).Value = default_message;
            cmd.Parameters.Add("@date", SqlDbType.NVarChar).Value = DateTime.Now.Date;

            cmd.Parameters.Add("@user_id", SqlDbType.VarChar).Value = userid;


            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conn.Close();

            System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Message Sent successfully');", true);


            #endregion


            System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Message Sent successfully');", true);


        }

        protected void ViewOrganDonersGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "ViewProfile")
            {
                //Determine the RowIndex of the Row whose Button was clicked.
                int rowIndex = Convert.ToInt32(e.CommandArgument);

                //Reference the GridView Row.
                GridViewRow row = ViewOrganDonersGridView.Rows[rowIndex];
                Application["id"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[2].Text;
                Application["fname"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[3].Text;
                Application["lname"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[4].Text;
                Application["phonenumber"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[5].Text;
                Application["emailtxt"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[6].Text;
                Application["gender"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[7].Text;
                Application["address"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[8].Text;
                Application["dob"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[9].Text;
                Application["bloodgroup"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[10].Text;
                Application["city"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[11].Text;
                Application["organ"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[12].Text;
                //Application["signature"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[13].Text;
                //Application["blooddooner"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[14].Text;
                //Application["useorganfor"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[15].Text;
                //Application["date"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[16].Text;

                //Fetch value of Country
                //string country = ViewOrganDonersGridView.Rows[rowIndex].Cells[3].Text;

                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Name: " +id+ "" + "\\nCountry: " + country + "');", true);

                Response.Redirect("View Profile.aspx");
            }
        }

        protected void cityDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cityDropDownList.SelectedIndex == 0)
            {
                ViewOrganDoners();
            }
            else
            {
                SqlCommand cmdaa = new SqlCommand("[citySearch]", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmdaa);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.SelectCommand.Parameters.AddWithValue("@cityName", cityDropDownList.SelectedItem.Text);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ViewOrganDonersGridView.DataSource = ds;
                ViewOrganDonersGridView.DataBind();
            }
        }
    }
}