using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;


namespace SalonComplex.Account
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Util.IsAnonymous())
                Response.Redirect("~/Account/Login.aspx");
        }

        protected void ChangeUserPassword_ChangingPassword(object sender, LoginCancelEventArgs e)
        {
            // new user
            string strLoginName;
            if (User.Identity.IsAuthenticated)
            {
                strLoginName = User.Identity.Name;

                admin connect = new admin();
                int Result = connect.Call_ChangePassWord(strLoginName,
                                                         ChangeUserPassword.CurrentPassword.ToString(),
                                                         ChangeUserPassword.NewPassword.ToString());
                strLoginName = null;

                if (Result == 1)
                {
                    Server.Transfer("~/Account/ChangePasswordSuccess.aspx");
                    e.Cancel = true;
                }
                else
                {
                    string strMsgError = "Fail ChangePassword: Error unknown";
                    if (Result == 2)
                    {
                        strMsgError = "Fail ChangePassword:Invalid PassWord";
 
                    }

                    Session["sesPasswordFail"]= strMsgError;

                    //fail change Password
                    Server.Transfer("~/Account/ChangePasswordFail.aspx");
                    e.Cancel = true;
                }


            }
            else

            {
                //user not authernticate
                Server.Transfer("~/Account/Login.aspx");
                e.Cancel = true;
            }


        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
            //
            string strPassWord = args.Value;

            if (strPassWord.Length >= 6)
            {
                args.IsValid = true;

            }
            else
            {
                args.IsValid = false;
            }

        }
    }
}
