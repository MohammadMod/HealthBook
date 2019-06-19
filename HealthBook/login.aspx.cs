﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HealthBook
{
    public partial class login : System.Web.UI.Page
    {

        public static string emaila = "";
        public static string username = "";
        public static string password = "";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());

            SqlCommand cmd = new SqlCommand("login_search", con);
            con.Open();


            cmd.Parameters.AddWithValue("@email", emailTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PasswordTextBox.Text);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                emaila = dr[0].ToString();
                password = dr[1].ToString();
                username = dr[2].ToString();

                Session["username"] = dr[2].ToString();

                if (Reminder.Checked)
                {
                    SaveCookie();
                }
            }
            else
            {
            }

            dr.Close();
            con.Close();

        }
        private void SaveCookie()
        {
            //Create a Cookie with a suitable Key.
            HttpCookie loginCookie = new HttpCookie("Login");
            //Set the Cookie value.
            loginCookie.Values["Name"] = emaila;
            loginCookie.Values["Password"] = password;
            loginCookie.Path = Request.ApplicationPath;
            //Set the Expiry date.
            loginCookie.Expires = DateTime.Now.AddDays(10);
            //Add the Cookie to Browser.
            Response.Cookies.Add(loginCookie);

        }
    }
}