using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System .Xml.Linq;
using SalonComplex.LinqSQL;


namespace SalonComplex.Account
{
    public partial class Login1 : System.Web.UI.Page
    {
        //DataClassesLinqSQLDataContext _context = new DataClassesLinqSQLDataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            /*var result = (from x in _context.clients
                where x.client_username.Equals(UserName.Text)
                & x.client_password.Equals(Password.Text)
                select x).FirstOrDefault();

                if (result != null)
                {

                    //Session["New"] = UserName.Text;
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    lblMessage.Text = "Fail to login";

                //UserName.Text = "";
            }*/
        }



    }
}
//Data Source=MARCOMACK-PC\SQLEXPRESS;Initial Catalog=Salondb;Integrated Security=True