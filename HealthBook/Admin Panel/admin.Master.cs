using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook.Admin_Panel
{
    public partial class admin : System.Web.UI.MasterPage
    {
        login log = new login();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //if (!IsPostBack)
            //{
            //    try
            //    {
            //        string user = Request.Cookies["username"].Value;
            //        HttpCookie myCookie = Request.Cookies["Login"];
            //        string username = user;
            //        User_name.Text = "Welcome: " + username;
            //    }
            //    catch (Exception)
            //    {
            //        try
            //        {
            //            if (Session["username"].ToString() != "HealthBook")
            //            {
            //                Response.Redirect("..\\login.aspx");
            //            }
            //        }
            //        catch (Exception)
            //        {
            //            Response.Redirect("..\\login.aspx");

            //        }

            //        try
            //        {
            //            User_name.Text = "Welcome: " + Session["username"].ToString();

            //        }
            //        catch (Exception)
            //        {

            //        }


                //}
               
            }
          

        
    }
}