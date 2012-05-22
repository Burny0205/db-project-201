using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;

namespace SalonComplex.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
        }

        protected void LoginUserAuthenticate(object sender, AuthenticateEventArgs e)
        {
            //call SP_CheckLoginPassword

            admin connect = new admin();

            int result = connect.CallCheckLoginPassWord(
                LoginUser.UserName.ToString(CultureInfo.InvariantCulture), LoginUser.Password.ToString(CultureInfo.InvariantCulture));

            //Found User
            if (result == 1)
            {
                string[] strFieldsUserLogin = connect.StrFullData.Split(',');
                string strEnable = strFieldsUserLogin[1];
                string strDenied = strFieldsUserLogin[2];
                string loginId = strFieldsUserLogin[3]; 
                string clientId = strFieldsUserLogin[4];

                if (strDenied == "1")
                {
                    LabelStatus.Text = " Sorry User Denied ";
                    e.Authenticated = false;
                }
                else
                {
                    if (strEnable == "1")
                    {
                        LabelStatus.Text = " Success ";

                        Util.RemoveCookie("clientCookie");

                        HttpCookie httpCookie = new HttpCookie("clientCookie")
                                                    {
                                                        Value = clientId, 
                                                        Expires = DateTime.Now.AddMonths(3)
                                                    };
                        Response.Cookies.Add(httpCookie);

                        e.Authenticated = true;
                        
                    }
                    else { LabelStatus.Text = " This account is not yet enabled"; e.Authenticated = false; }
                }

             }
            else
            {
                //Fail
                LabelStatus.Text = " Invalid UserName or PassWord Incorrect";
                e.Authenticated = false;

            }


        }
        protected void CustomValidator1ServerValidate(object source, ServerValidateEventArgs args)
        {
            // debug
            string strName = args.Value;
            args.IsValid = (!Util.CheckInput(strName));
        }

        protected void CustomValidator2ServerValidate(object source, ServerValidateEventArgs args)
        {
            string strPassWord = args.Value;
            args.IsValid = (!Util.CheckInput(strPassWord));
        }
    }
}
 