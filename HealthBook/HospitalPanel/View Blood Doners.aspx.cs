using MessageBird;
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

namespace HealthBook.HospitalPanel
{
    public partial class View_Blood_Doners : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());


        static long[] phoneNums;
        static int numofselectednumbers = 0;
        static string default_message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("View_Blood_Doners", conn);
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

                try
                {
                    DataTable subjects = new DataTable();

                    SqlDataAdapter adapter = new SqlDataAdapter("SELECT DISTINCT [Cityname] FROM Cities ", conn);
                    adapter.Fill(subjects);

                    conn.Open();
                    cityDropDownList.DataSource = subjects;
                    cityDropDownList.DataTextField = "Cityname";
                    cityDropDownList.DataValueField = "Cityname";
                    cityDropDownList.DataBind();
                    cityDropDownList.Items.Insert(0, new ListItem("Select", "NA"));

                    conn.Close();
                }
                catch (Exception)
                {

                    throw;
                }

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

        protected void cityDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (BloodGroupDropDownList0.SelectedIndex == 0)
            {
                ViewOrganDoners();
            }
            else
            {
                SqlCommand cmdaa = new SqlCommand("citySearch", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmdaa);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.SelectCommand.Parameters.AddWithValue("@Cityname", BloodGroupDropDownList0.SelectedItem.Text);
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
                SqlCommand cmd = new SqlCommand("View_Blood_Doners", conn);
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

        //protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        //{
        //    phoneNums = new long[numofselectednumbers+1];
        //    string str = string.Empty;
        //    long phone = 0;
        //    foreach (GridViewRow gvrow in ViewOrganDonersGridView.Rows)
        //    {
        //        CheckBox chk = (CheckBox)gvrow.FindControl("CheckBox1");
        //        if (chk != null & chk.Checked)
        //        {
        //            phoneNums[0]=Convert.ToInt64(gvrow.Cells[6].Text);
        //        }

                

        //    }

        //    numofselectednumbers = numofselectednumbers + 1;
        //}

        //protected void Button1_Click(object sender, EventArgs e)
        //{


        //    //for (int i = 1; i < numofselectednumbers; i++)
        //    //{
        //    //    const string YourAccessKey = "tZOnx4JOynYBbpbtFjj7ktJQx"; // your access key here
        //    //    Client client = Client.CreateDefault(YourAccessKey);
        //    //    long Msisdn = phoneNums[i]; // your phone number here
        //    //    MessageBird.Objects.Message message = 
        //    //    client.SendMessage("HealthBook", "Aw katak bash bariz piwistman ba yarmati janabta paiwandit piwa dakain la naxoshxanai " /*+ Session["username"].ToString()*/, new[] { Msisdn });

        //    //    System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Message Sent successfully');", true);

        //    //}

        //    Response.Write(numofselectednumbers.ToString());
        //    Response.Write("  ");
        //    Response.Write(phoneNums[numofselectednumbers].ToString());








        //}





        protected void BloodGroupDropDownList0_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (BloodGroupDropDownList0.SelectedIndex == 0)
            {
                ViewOrganDoners();
            }
            else
            {
                SqlCommand cmdaa = new SqlCommand("View_Organ_Doners_by_Blood_Group", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmdaa);
                da.SelectCommand.CommandType = CommandType.StoredProcedure;

                da.SelectCommand.Parameters.AddWithValue("@selectedBlood", BloodGroupDropDownList0.SelectedItem.Text);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ViewOrganDonersGridView.DataSource = ds;
                ViewOrganDonersGridView.DataBind();
            }
        }

        protected void ViewOrganDonersGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                GridViewRow row = ViewOrganDonersGridView.SelectedRow;
                string PhoneNumberIngrid = row.Cells[5].Text;
                long PhoneNumber = long.Parse(PhoneNumberIngrid);


                const string YourAccessKey = "tZOnx4JOynYBbpbtFjj7ktJQx"; // your access key here
                Client client = Client.CreateDefault(YourAccessKey);
                long Msisdn = PhoneNumber; // your phone number here
                MessageBird.Objects.Message message =
                client.SendMessage("Healthbok", default_message + " Hospital name: " + Session["username"].ToString(), new[] { Msisdn });

                System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Message Sent successfully');", true);
            }
            catch (Exception)
            {

                Response.Redirect("..//login.aspx");
            }
           
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
                Application["phoneNum"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[5].Text;
                Application["bloodgroup"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[6].Text;
                Application["city"] = ViewOrganDonersGridView.Rows[rowIndex].Cells[7].Text;

                Response.Redirect("View Profile BD.aspx");
            }
        }
    }


}