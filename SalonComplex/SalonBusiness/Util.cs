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

namespace SalonComplex.SalonBusiness
{
    static public class Util
    {
        // from http://forums.asp.net/t/1254125.aspx
        
        //Defines the set of characters that will be checked.
        //You can add to this list, or remove items from this list, as appropriate for your site
        public static string[] blackList = {"--",";--",";","/*","*/","@@","@",
                                           "char","nchar","varchar","nvarchar",
                                           "alter","begin","cast","create","cursor","declare","delete","drop","end","exec","execute",
                                           "fetch","insert","kill","open",
                                           "select", "sys","sysobjects","syscolumns",
                                           "table","update","=",","};

        
        static public Boolean CheckInput(string parameter)

        {
            Boolean Result = false;
            CompareInfo comparer = CultureInfo.InvariantCulture.CompareInfo;
            for (int i = 0; i < blackList.Length; i++)
            {
                if (comparer.IndexOf(parameter, blackList[i], CompareOptions.IgnoreCase ) >= 0)
                {

                    Result = true;
                    return(Result);
                  
                }

            }
            return (Result);
        }
 

        static public Boolean SendEmailSmtp (string strCodeValdateUser,
                                             string  strNewUserNameID,
                                             string  strNewUserName,
                                             string  strEmailUser,
                                             string  strUsernameEmail,
                                             string  strFromYourName,
                                             string strSubject)


    {
        Boolean Resultado = false;
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
        sb.Append ("Welcome " + strNewUserName + ", <br/> <br/>");
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
            Resultado = true;
        }
        catch (Exception ex)
        {
            Trace.WriteLine("Error sending Email :" + ex.Message);
            Resultado = false;
        }

            return (Resultado);
    }


        public static string GetRandomPassword (int length)
        { 
            char [] chars = "abcdefghijklmnopqrstuvwxyz1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
            string password = string.Empty;
            Random random = new Random();
            
            for (int i = 0; i < length; i++)
            {
                int x = random.Next(1, chars.Length);
                //no repetition of characters
                if (!password.Contains (chars.GetValue(x).ToString()))
                    password += chars.GetValue(x);
                else
                    i--;
            }

            return password;
        }


        /// <summary>
        /// Gets the connection.
        /// </summary>
        /// <returns></returns>
        public static string GetConnection()
        {
            return ConfigurationManager.ConnectionStrings["SalonConnectionString"].ConnectionString;
        }


        public static List<TimeSpan> GetTimeSpan(List<string> times)
        {
            return times.Select(GetTimeSpan).ToList();
        }

        public static TimeSpan GetTimeSpan(string timeinstring)
        {

            switch (timeinstring.Trim())
            {
                case "8am":
                    return new TimeSpan(8,0,0);
                case "9am":
                    return new TimeSpan(9, 0, 0);
                case "10am":
                    return new TimeSpan(10, 0, 0);
                case "11am":
                    return new TimeSpan(11, 0, 0);
                case "12pm":
                    return new TimeSpan(12, 0, 0);
                case "1pm":
                    return new TimeSpan(13, 0, 0);
                case "2pm":
                    return new TimeSpan(14, 0, 0);
                case "3pm":
                    return new TimeSpan(15, 0, 0);
                case "4pm":
                    return new TimeSpan(16, 0, 0);
                case "5pm":
                    return new TimeSpan(17, 0, 0); 
                default :
                    return new TimeSpan(0, 0, 0);
            }
        }


      }


}





