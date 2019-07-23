﻿using MessageBird;
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
    public partial class View_Blood_Doners : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        

        static string[] myIDs = new string[10];
        static long[] phoneNums = new long[10];

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

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            string str = string.Empty;
            long phone = 0;
            int i = 0;
            foreach (GridViewRow gvrow in ViewOrganDonersGridView.Rows)
            {
                CheckBox chk = (CheckBox)gvrow.FindControl("CheckBox1");
                if (chk != null & chk.Checked)
                {

                    str = gvrow.Cells[3].Text;
                    phone =Convert.ToInt64(gvrow.Cells[6].Text);

                }

                phoneNums[i] = phone;
                myIDs[i] = str;
                i++;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //GridViewRow row = ViewOrganDonersGridView.SelectedRow;
            //string PhoneNumberIngrid = row.Cells[5].Text;
            //long PhoneNumber = long.Parse(PhoneNumberIngrid);

            for (int i = 0; i < 10; i++)
            {
                Response.Write(myIDs[i]);



                //const string YourAccessKey = "NrCjD40h6gaCws2A0t0VEFVXW"; // your access key here
                //Client client = Client.CreateDefault(YourAccessKey);
                //long Msisdn = PhoneNumber; // your phone number here
                //MessageBird.Objects.Message message =
                //client.SendMessage("HealthBook", "Aw katak bash bariz piwistman ba yarmati janabta paiwandit piwa dakain la naxoshxanai " + Session["username"].ToString(), new[] { Msisdn });

                //System.Web.UI.ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "AlertBox", "alert('Message Sent successfully');", true);

            }



        }
    }


}