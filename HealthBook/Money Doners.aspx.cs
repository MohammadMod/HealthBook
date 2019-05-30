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
    public partial class Money_Doners : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                { 
                conn.Open();
                SqlCommand cmd = new SqlCommand("Show_Donation_Money", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                conn.Close();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    MoneyDonersGridView.DataSource = ds;
                    MoneyDonersGridView.DataBind();
                }
                else
                {
                    ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                    MoneyDonersGridView.DataSource = ds;
                    MoneyDonersGridView.DataBind();
                    int columncount = MoneyDonersGridView.Rows[0].Cells.Count;
                    MoneyDonersGridView.Rows[0].Cells.Clear();
                    MoneyDonersGridView.Rows[0].Cells.Add(new TableCell());
                    MoneyDonersGridView.Rows[0].Cells[0].ColumnSpan = columncount;
                    MoneyDonersGridView.Rows[0].Cells[0].Text = "No Records Found";
                }

            } 
                catch (Exception)
            {

                throw;
            }
        }
        }
    }
}