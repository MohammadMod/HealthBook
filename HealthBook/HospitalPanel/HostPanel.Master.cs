﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook.HospitalPanel
{
    public partial class HostPanel : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    User_namelabel.Text = "Welcome: " + Session["username"].ToString();
                    if (Session["username"].ToString() == "")
                    {
                        Response.Redirect("..//default.aspx");
                    }

                }
                catch (Exception)
                {

                }
            }

        }
    }
}