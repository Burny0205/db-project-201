using System;
using System.Web;
using SalonComplex.SalonBusiness;

namespace SalonComplex.Master
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // remove cookie if user is not authenticated
                if (Util.IsAnonymous())
                {
                    Util.RemoveCookie("clientCookie");

                    ChangePassword.InnerText = "Register";
                    ChangePassword.HRef = "../Account/Register.aspx";

                    Username.InnerHtml = Util.FormatUsername();
                }
                else
                {
                    if(!Util.IsAdmin())
                    {
                        Response.Redirect("~/Pages/Unauthorized.aspx");  
                    }

                    Username.InnerHtml = Util.FormatUsername();
                }
            }
        }
    }
}