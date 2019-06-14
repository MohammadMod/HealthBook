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
    public partial class View_Organe_Doners : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewOrganDoners();

            }
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

       
    }
}