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
    public partial class List_of_sent_messages : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime now = DateTime.Now;
                var startDate = new DateTime(now.Year, now.Month, 1);
                var endDate = startDate.AddMonths(1).AddDays(-1);
                string username = Session["username"].ToString();




                conn.Open();
                SqlCommand cmd = new SqlCommand("view_sent_message", conn);
                cmd.Parameters.Add("@start_date", startDate);
                cmd.Parameters.Add("@end_date", endDate);
                cmd.Parameters.Add("@username",username );

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
        }
    }
}