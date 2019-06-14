using MessageBird;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook
{
    public partial class test : System.Web.UI.Page
    {
        string loged_user = "";
        Log_In Log_In = new Log_In();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                loged_user = Session["username"].ToString();
            }
            catch (Exception)
            {

            }

            if (!IsPostBack)
            {
                if (loged_user != "")
                {
                    Label1.Text = loged_user;
                }
                else
                {
                    Response.Redirect("log in.aspx");
                }
            }
        }
    }
}