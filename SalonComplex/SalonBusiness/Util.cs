using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
using System.Diagnostics;
using System.Net;
using System.Text;
using System.Net.Mail;
using System.Net.Mime;
using System.Configuration;
using SalonComplex.LinqSQL;

namespace SalonComplex.SalonBusiness
{
    public static class Util
    {
        private static DataClassesLinqSQLDataContext _context;

        #region code relating to password and sql injection

        // from http://forums.asp.net/t/1254125.aspx

        //Defines the set of characters that will be checked.
        //You can add to this list, or remove items from this list, as appropriate for your site
        public static string[] blackList = {
                                               "--", ";--", ";", "/*", "*/", "@@", "@",
                                               "char", "nchar", "varchar", "nvarchar",
                                               "alter", "begin", "cast", "create", "cursor", "declare", "delete", "drop"
                                               , "end", "exec", "execute",
                                               "fetch", "insert", "kill", "open",
                                               "select", "sys", "sysobjects", "syscolumns",
                                               "table", "update", "=", ","
                                           };


        public static Boolean CheckInput(string parameter)

        {
            Boolean result = false;
            CompareInfo comparer = CultureInfo.InvariantCulture.CompareInfo;
            return blackList.Any(t => comparer.IndexOf(parameter, t, CompareOptions.IgnoreCase) >= 0);
        }


        public static Boolean SendEmailSmtp(string strCodeValdateUser,
                                            string strNewUserNameID,
                                            string strNewUserName,
                                            string strEmailUser,
                                            string strUsernameEmail,
                                            string strFromYourName,
                                            string strSubject)


        {
            Boolean resultado = false;
            //strNewUserID
            //strNewUserName,
            //strEmailUser,
            //strUsernameEmail,
            //strFromYourName,
            //strSubject = "Email validate Link


            //setup the base of the url
            string urlBase = System.Web.HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority)
                             + System.Web.HttpContext.Current.Request.ApplicationPath;

            // link format
            string verifyUrl = "VerifyNewUser/VerifyNewUser.aspx?ID=" + strNewUserNameID + "&CodeUser=" +
                               strCodeValdateUser;
            //combine to make the final url
            string fullUrl = urlBase + verifyUrl;

            MailMessage mail = new MailMessage();
            mail.To.Add(strEmailUser);
            mail.From = new MailAddress(strUsernameEmail, strFromYourName, System.Text.Encoding.UTF8);
            mail.Subject = strSubject;
            mail.SubjectEncoding = System.Text.Encoding.UTF8;

            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true; // set text email in html
            mail.Priority = MailPriority.High;

            //build message body

            StringBuilder sb = new StringBuilder();
            // add welcome username line
            sb.Append("Welcome " + strNewUserName + ", <br/> <br/>");
            sb.Append("Thank you for registering with the The Edge Beauty Salon. To activate your new account please ");
            //html link tag <a href = "fullUrlHer">
            sb.Append("<a href=\"" + fullUrl + "\">");
            sb.Append("Click Here");
            //end the link html tag

            sb.Append("</a>");
            mail.Body = sb.ToString();
            SmtpClient clientSMTP = new SmtpClient();
            clientSMTP.EnableSsl = true; // gmail use server secure layer
            //smtp from web.config
            try
            {
                clientSMTP.Send(mail);
                resultado = true;
            }
            catch (Exception ex)
            {
                Trace.WriteLine("Error sending Email :" + ex.Message);
                resultado = false;
            }

            return (resultado);
        }


        public static string GetRandomPassword(int length)
        {
            char[] chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            string password = string.Empty;
            Random random = new Random();

            for (int i = 0; i < length; i++)
            {
                int x = random.Next(1, chars.Length);
                //no repetition of characters
                if (!password.Contains(chars.GetValue(x).ToString()))
                    password += chars.GetValue(x);
                else
                    i--;
            }

            return password;
        }

        #endregion


        /// <summary>
        /// Gets the connection.
        /// </summary>
        /// <returns></returns>
        public static string GetConnection()
        {
            return ConfigurationManager.ConnectionStrings["SalonConnectionString"].ConnectionString;
        }

        /// <summary>
        /// Retrieve DbContext
        /// </summary>
        /// <returns></returns>
        public static DataClassesLinqSQLDataContext GetDbContext()
        {
            if (_context != null)
                return _context;
            return _context = new DataClassesLinqSQLDataContext(Util.GetConnection());
        }

        public static int RealValue(int index)
        {
            return index == 1 ? 1 : (index == 4 ? 4 : 2);
        }
    }


}





