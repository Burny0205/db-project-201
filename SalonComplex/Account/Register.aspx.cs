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
    public partial class Register : System.Web.UI.Page
    {
        public int iUserId = 0;

        private static DataClassesLinqSQLDataContext _context = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Clean Status
            LabelStatus.Text = "";

            //RegisterUser.ContinueDestinationPageUrl = Request.QueryString["ReturnUrl"];
        }


        protected void CustomValidatorPassword_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string strPassword = args.Value;

            if (strPassword.Length >= 6)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void RegisterUser_CreatedUser(object sender, EventArgs e)
        {

            {

                //admin test = new admin();
                //client valuesClient = new client();

              
                //valuesClient.client_fname = FnameText.Text.Trim();
                //valuesClient.client_lname = LnameText.Text.Trim();
                //string strGender;
                //if (RadioButtonGender.Checked) { strGender = "M"; }
                //else { strGender = "F"; }
                //valuesClient.client_gender = strGender;
                //valuesClient.client_street = StreetText.Text.Trim();
                //valuesClient.client_city = CityText.Text.Trim();
                //valuesClient.client_parish = Parish.SelectedItem.ToString();
                //valuesClient.client_profession = Profession.SelectedItem.ToString();
                //valuesClient.client_phone = PhoneTextBox.Text.Trim();

                //int Result = test.Call_InsertClient(valuesClient);
               
                
                                
                FormsAuthentication.SetAuthCookie(RegisterUser.UserName, false /* createPersistentCookie */);

                string continueUrl = RegisterUser.ContinueDestinationPageUrl;
                if (String.IsNullOrEmpty(continueUrl))
                {
                    continueUrl = "~/";
                }
                Response.Redirect(continueUrl);







            }

        }





        protected void CreateUserButton_Click(object sender, EventArgs e)
        {
            
                      
            
            //admin test = new admin();
            //client valuesClient = new client();


            //valuesClient.client_fname = FnameText.Text.Trim();
            //valuesClient.client_lname = LnameText.Text.Trim();
            //string strGender;
            //if (RadioButtonGender.Checked) { strGender = "M"; }
            //else { strGender = "F"; }
            //valuesClient.client_gender = strGender;
            //valuesClient.client_street = StreetText.Text.Trim();
            //valuesClient.client_city = CityText.Text.Trim();
            //valuesClient.client_parish = Parish.SelectedItem.ToString();
            //valuesClient.client_profession = Profession.SelectedItem.ToString();
            //valuesClient.client_phone = PhoneTextBox.Text.Trim();

            //int Result = test.Call_InsertClient(valuesClient);
           

            
            


       }
        

        


        protected void RegisterUser_CreateingUser(object sender, LoginCancelEventArgs e)
        {
                     

            //string teste = RegisterUser.EmailRegularExpression;

            admin connectBusiness = new admin();
            UserLogin newUser = new UserLogin();

            newUser.LoginName = RegisterUser.UserName.ToString();
            newUser.LoginPassword = RegisterUser.Password.ToString();
            newUser.LoginEmail = RegisterUser.Email.ToString();
            
            //email will active the login
            //inactive loginEnable = 0;
            newUser.LoginEnable = 0;

            newUser.LoginDenied = 0;

                  
            
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
            int Result = connectBusiness.Call_InsertUserLogin(newUser, strRandowPassWord);

            //id in database from newUser
            newUser.LoginID = connectBusiness.iUserLoginID;
   
                       
            
            // lets Send via email a link with format is 
            //http://localhost:50672/VerifyNewUser/VerifyNewUser.apspx

            if (Result == 0)
            {
                LabelStatus.Text = "An error has occurred. Please Tell E-Mail support:  edgesalon@gmail.com";

            }

            else
            {
                if (Result == 1)
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
                    string strFromYourName = "Edge Salon Complex";
                    string strSubject = "Validatation Link For Edge Salon Registration";




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

                else if (Result == 2)
                {

                    LabelStatus.Text = " Fail---> User already exist with same username...Please choose different username";
                }

                else if (Result == 3)
                {

                    LabelStatus.Text = " Fail---> User already exist with same email address...Please choose different email address";
                }

                else
                {
                    LabelStatus.Text = " An error has occurred. Please Tell E-Mail support:  edgesalon@gmail.com";
                }

            }      
                    
                    // Cancel the create user workflow
                    e.Cancel = true;



                }

     
        protected void RegisterUser_CreateUserError(object sender, CreateUserErrorEventArgs e)
        {
            
        }

        protected void fhethr(object sender, WizardNavigationEventArgs e)
        {

        }

        private static DataClassesLinqSQLDataContext GetDbContext()
        {
            if (_context != null)
                return _context;
            return _context = new DataClassesLinqSQLDataContext(Util.GetConnection());
        }

    }

}



