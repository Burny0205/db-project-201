using System;
using System.Net;
using System.Web;
using System.Web.UI.WebControls;

namespace SalonComplex.Master
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // remove cookie if user is not authenticated
                if (!HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (Request.Cookies["clientCookie"] != null)
                    {
                        HttpCookie httpCookie = new HttpCookie("clientCookie")
                                                    {
                                                        Expires = DateTime.Now.AddDays(-1d)
                                                    };
                        Response.Cookies.Add(httpCookie);
                    }
                }
                else
                {
                    string username = string.Format("<i class=\"icon-user\"></i> {0} <span class=\"caret\"></span>",
                                                    HttpContext.Current.User.Identity.Name);
                    Username.InnerHtml = username;
                }
            }


        }

        protected void HeadLoginView_ViewChanged(object sender, EventArgs e)
        {

        }

        
    }
}
