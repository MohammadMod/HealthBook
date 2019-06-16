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
    public partial class View_Hospitals : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {

                    conn.Open();
                    SqlCommand cmd = new SqlCommand("View_Hospitals", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    conn.Close();
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        ViewHospitalsGridView.DataSource = ds;
                        ViewHospitalsGridView.DataBind();
                    }
                    else
                    {
                        ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                        ViewHospitalsGridView.DataSource = ds;
                        ViewHospitalsGridView.DataBind();
                        int columncount = ViewHospitalsGridView.Rows[0].Cells.Count;
                        ViewHospitalsGridView.Rows[0].Cells.Clear();
                        ViewHospitalsGridView.Rows[0].Cells.Add(new TableCell());
                        ViewHospitalsGridView.Rows[0].Cells[0].ColumnSpan = columncount;
                        ViewHospitalsGridView.Rows[0].Cells[0].Text = "No Records Found";
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