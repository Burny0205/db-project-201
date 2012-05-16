using System;
using System.Net;
using System.Web;

namespace SalonComplex.Master
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // remove cookie if user is not authenticated
            if(!HttpContext.Current.User.Identity.IsAuthenticated)
            {
                if(Request.Cookies["clientCookie"] != null)
                {
                    HttpCookie httpCookie = new HttpCookie("clientCookie")
                    {
                        Expires = DateTime.Now.AddDays(-1d)
                    };
                    Response.Cookies.Add(httpCookie);
                }
            }
        }

        protected void HeadLoginView_ViewChanged(object sender, EventArgs e)
        {

        }
    }
}
