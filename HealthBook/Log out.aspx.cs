using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook
{
    public partial class Log_out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SiteMaster site = new SiteMaster();
            site.loggedUser = "";
            try
            {
                FormsAuthentication.SignOut();
                Response.Redirect("log in.aspx");
                Application["LoggedUserName"] = "";
                Session.Abandon();
                Response.Cookies.Clear();
            }
            catch
            {

            }
        }
    }
}