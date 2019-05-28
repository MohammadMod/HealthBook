using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook
{
    public partial class Donate_Organs : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Visible = true;
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (GenderDropDownList.SelectedIndex == 0)
            {
                Label1.Text = "Please select your gender";
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Visible = true;
            }

        }
    }
}