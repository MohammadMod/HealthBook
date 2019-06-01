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
        protected void Page_Load(object sender, EventArgs e)
        {
            const string YourAccessKey = "NrCjD40h6gaCws2A0t0VEFVXW"; // your access key here
            Client client = Client.CreateDefault(YourAccessKey);
            const long Msisdn = +9647503202798; // your phone number here
            MessageBird.Objects.Message message =
            client.SendMessage("HealthBook", "We Need Your Help", new[] { Msisdn });
        }
    }
}