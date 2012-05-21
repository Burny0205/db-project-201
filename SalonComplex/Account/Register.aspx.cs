using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;
using System.Configuration;
using System.Net;
using System.Net.Configuration;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;



namespace SalonComplex.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Clean Status
            LabelStatus.Text = "";

        }


        protected void CustomValidatorPasswordServerValidate(object source, ServerValidateEventArgs args)
        {
            string strPassword = args.Value;

            args.IsValid = strPassword.Length >= 6;
        }

        protected void RegisterUserCreatedUser(object sender, EventArgs e)
        {
            FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);

            string continueUrl = RegisterUser.ContinueDestinationPageUrl;
            if (String.IsNullOrEmpty(continueUrl))
            {
                continueUrl = "~/";
            }
            Response.Redirect(continueUrl);
        }


        protected void RegisterUserCreateingUser(object sender, LoginCancelEventArgs e)
        {


            //string teste = RegisterUser.EmailRegularExpression;

            admin connectBusiness = new admin();
            UserLogin newUser = new UserLogin
                                    {
                                        LoginName = RegisterUser.UserName,
                                        LoginPassword = RegisterUser.Password,
                                        LoginEmail = RegisterUser.Email,
                                        LoginEnable = 0,
                                        LoginDenied = 0
                                    };

            //email will active the login
            //inactive loginEnable = 0;


            //SQL Injection Problem

            if (Util.CheckInput(newUser.LoginName))
            {
                LabelStatus.Text = "Sorry your request failed";

                // Cancel the create user workflow
                e.Cancel = true;
                return;

            }


            if (Util.CheckInput(newUser.LoginPassword))
            {
                LabelStatus.Text = "Request failed";

                // Cancel the create user workflow
                e.Cancel = true;
                return;

            }

            string strRandowPassWord = Util.GetRandomPassword(10);
            //new Call_InsertLogin Now send strRandowPassword
            int result = connectBusiness.CallInsertUserLogin(newUser, strRandowPassWord);

            //id in database from newUser
            newUser.LoginID = connectBusiness.iUserLoginID;


            client valuesClient = new client
            {
                client_LoginID = newUser.LoginID,
                client_fname = FnameText.Text.Trim(),
                client_lname = LnameText.Text.Trim(),
                client_gender = (RadioButtonGender.Checked) ? "M" : "F",
                client_street = StreetText.Text.Trim(),
                client_city = CityText.Text.Trim(),
                client_parish = Parish.SelectedValue,
                client_profession = Profession.SelectedValue,
                client_phone = PhoneTextBox.Text.Trim()
            };

            result = connectBusiness.CallInsertClient(valuesClient);


            // lets Send via email a link with format is 
            //http://localhost:50672/VerifyNewUser/VerifyNewUser.apspx

            switch (result)
            {
                case 0:
                    LabelStatus.Text = "An error has occurred. Please Tell E-Mail support:  edgesalon@gmail.com";
                    break;
                case 1:
                    {

                        LabelStatus.Text = "****Login Inserted with Success !!! Please GotTo Menu Login ";

                        //start routine to send Email...
                        //receive SMTP config from web .config
                        Configuration configurationFile =
                            WebConfigurationManager.OpenWebConfiguration(HttpContext.Current.Request.ApplicationPath);

                        MailSettingsSectionGroup mailSettings =
                            configurationFile.GetSectionGroup("system.net/mailSettings") as MailSettingsSectionGroup;

                        //Receive email from Edge Salon Complex
                        string strUsernameEmail = mailSettings.Smtp.Network.UserName;
                        const string strFromYourName = "Edge Salon Complex";
                        const string strSubject = "Validatation Link For Edge Salon Registration";




                        if (Util.SendEmailSmtp
                            (strRandowPassWord,
                             newUser.LoginID.ToString(),
                             newUser.LoginName,
                             newUser.LoginEmail,
                             strUsernameEmail,
                             strFromYourName,
                             strSubject))
                        {
                            LabelStatus.Text += "Sending Email to confirm user";

                            //to message welcome newuser.loginName
                            Session["idUserName"] = newUser.LoginName;
                            RegisterUser.ContinueDestinationPageUrl = "~/VerifyNewUser/VerifyNewUser.aspx?Mode=1";
                            //here insert a new routine to send strRandowPassWord
                            //using URL Mode = 1 is account is currently inactive
                            Server.Transfer("~/VerifyNewUser/VerifyNewUser.aspx?Mode=1");

                        }
                        else
                        {
                            LabelStatus.Text += "  Fail to send Email to Confirm User";
                        }
                    }
                    break;
                case 2:
                    LabelStatus.Text = " Fail---> User already exist with same username...Please choose different username";
                    break;
                case 3:
                    LabelStatus.Text = " Fail---> User already exist with same email address...Please choose different email address";
                    break;
                default:
                    LabelStatus.Text = " An error has occurred. Please Tell E-Mail support:  edgesalon@gmail.com";
                    break;
            }

            // Cancel the create user workflow
            e.Cancel = true;

        }


        protected void RegisterUserCreateUserError(object sender, CreateUserErrorEventArgs e)
        {

        }

        protected void CreateUserButtonClick(object sender, EventArgs e)
        {

        }

        protected void Fhethr(object sender, WizardNavigationEventArgs e)
        {

        }
    }

}



