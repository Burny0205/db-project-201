using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Globalization;
using System.Diagnostics;
using System.Net;
using System.Text;
using System.Net.Mail;
using System.Net.Mime;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;
using SalonComplex.Model;

namespace SalonComplex.SalonBusiness
{
    public static class Util
    {
        private static DataClassesLinqSQLDataContext _context;
        private static string _connection;

        #region code relating to password and sql injection

        // from http://forums.asp.net/t/1254125.aspx

        //Defines the set of characters that will be checked.
        //You can add to this list, or remove items from this list, as appropriate for your site
        public static string[] BlackList = {
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
            CompareInfo comparer = CultureInfo.InvariantCulture.CompareInfo;
            return BlackList.Any(t => comparer.IndexOf(parameter, t, CompareOptions.IgnoreCase) >= 0);
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
            string urlBase = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority)
                             + HttpContext.Current.Request.ApplicationPath;

            // link format
            string verifyUrl = "VerifyNewUser/VerifyNewUser.aspx?ID=" + strNewUserNameID + "&CodeUser=" +
                               strCodeValdateUser;
            //combine to make the final url
            string fullUrl = urlBase + verifyUrl;

            MailMessage mail = new MailMessage();
            mail.To.Add(strEmailUser);
            mail.From = new MailAddress(strUsernameEmail, strFromYourName, Encoding.UTF8);
            mail.Subject = strSubject;
            mail.SubjectEncoding = Encoding.UTF8;

            mail.BodyEncoding = Encoding.UTF8;
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
            if (_connection != null)
                return _connection;
            return _connection = ConfigurationManager.ConnectionStrings["SalonConnectionString"].ConnectionString;
        }

        /// <summary>
        /// Retrieve DbContext
        /// </summary>
        /// <returns></returns>
        public static DataClassesLinqSQLDataContext GetDbContext()
        {
            if (_context != null)
                return _context;
            return _context = new DataClassesLinqSQLDataContext(GetConnection());
        }

        /// <summary>
        /// Returns the real database mapping for a service selected with the drop down
        /// </summary>
        /// <param name="index">drop down index</param>
        /// <returns></returns>
        public static int RealValue(int index)
        {
            switch (index)
            {
                case 0:
                    return 2;
                case 1:
                    return 1;
                case 2:
                    return 4;
                default:
                    return 2;
            }
        }
        /// <summary>
        /// Helper function for Loing portal
        /// </summary>
        /// <returns></returns>
        public static string FormatUsername()
        {
            string _default = GetIdentity();
            return FormatUsername(_default);
        }

        /// <summary>
        /// Helper function for Loing portal
        /// </summary>
        /// <param name="uname">username</param>
        /// <returns></returns>
        public static string FormatUsername(string uname)
        {
            return string.Format("<i class=\"icon-user\"></i> {0} <span class=\"caret\"></span>",
                                            uname);
        }

        /// <summary>
        /// Get the current user Identity
        /// </summary>
        /// <returns></returns>
        public static string GetIdentity()
        {
            const string _default = "Anonymous";

            return IsAuthenticated()
                ? HttpContext.Current.User.Identity.Name : _default;
        }

        /// <summary>
        /// Retrieve clientId from cookie
        /// </summary>
        /// <returns></returns>
        public static int GetClientId()
        {
            int result = -1;
            HttpCookie httpCookie = HttpContext.Current.Request.Cookies.Get("clientCookie");
            if (httpCookie == null)
                return result;

            string value = httpCookie.Value;

            if (value == null)
                return result;

            string[] cookie = value.Split('|');
            if (cookie.Length > 1)
            {
                int.TryParse(cookie[0], out result);
                return result;

            }
            return result;
        }

        /// <summary>
        /// Returns a list of available time for an employee
        /// </summary>
        /// <param name="emp"></param>
        /// <param name="schId"></param>
        /// <returns></returns>
        public static List<DateTime> AvailableTime(employee emp, int schId)
        {
            schedule empSch = emp.schedules.FirstOrDefault(a => a.schedule_id == schId);
            List<DateTime> availableTimes = new List<DateTime>();

            if (empSch == null)
                return null;

            if (!empSch._8_00_am)
                availableTimes.Add(MakeDate(8, empSch.sch_date));
            if (!empSch._9_00_am)
                availableTimes.Add(MakeDate(9, empSch.sch_date));
            if (!empSch._10_00_am)
                availableTimes.Add(MakeDate(10, empSch.sch_date));
            if (!empSch._11_00_am)
                availableTimes.Add(MakeDate(11, empSch.sch_date));
            if (!empSch._12_00_pm)
                availableTimes.Add(MakeDate(12, empSch.sch_date));
            if (!empSch._1_00_pm)
                availableTimes.Add(MakeDate(13, empSch.sch_date));
            if (!empSch._2_00_pm)
                availableTimes.Add(MakeDate(14, empSch.sch_date));
            if (!empSch._3_00_pm)
                availableTimes.Add(MakeDate(15, empSch.sch_date));
            if (!empSch._4_00_pm)
                availableTimes.Add(MakeDate(16, empSch.sch_date));
            if (!empSch._5_00_pm)
                availableTimes.Add(MakeDate(17, empSch.sch_date));
            return availableTimes;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="index"></param>
        /// <param name="schDate"></param>
        /// <returns></returns>
        public static DateTime MakeDate(int index, DateTime schDate)
        {
            return new DateTime(schDate.Year, schDate.Month, schDate.Day, index, 0, 0);
        }

        /// <summary>
        /// The following function performs a traverls over the root control nodes returning the items that match the 
        /// defined type
        /// </summary>
        /// <param name="root">Parent node</param>
        /// <param name="type">Type of node to be returned</param>
        /// <param name="list">output list</param>
        public static void FindControlRecursive(Control root, Type type, ref List<Control> list)
        {
            if (root.Controls.Count != 0)
            {
                foreach (Control c in root.Controls)
                {
                    if (c.GetType() == type)
                        list.Add(c);
                    else if (c.HasControls())
                        FindControlRecursive(c, type, ref list);
                }
            }
        }

        /// <summary>
        /// The following function returns an ItemStore of all items check on a node
        /// </summary>
        /// <param name="root">Parent node</param>
        /// <param name="type">Type of node to be returned</param>
        /// <param name="selectedDate">date selected</param>
        /// <returns>Collection of item store</returns>
        public static List<ItemStore> GetCheckedItems(Control root, Type type, DateTime selectedDate)
        {
            DataClassesLinqSQLDataContext context = GetDbContext();
            List<ItemStore> items = new List<ItemStore>();
            var checkboxes = new List<Control>();
            FindControlRecursive(root, type, ref checkboxes);

            foreach (Control checkbox in checkboxes)
            {
                CheckBox chk = ((CheckBox)checkbox);
                if (!chk.Checked || !chk.Enabled) continue;

                int result = 0;
                int.TryParse(chk.Text, out result);
                if (context != null)
                    items.Add(new ItemStore
                                  {
                                      Employee = context.employees.FirstOrDefault(a => a.employee_id == result),
                                      SelectedTime = ParseChkBox(chk.ClientID, selectedDate)

                                  });
            }

            return items;
        }

        /// <summary>
        /// The following function returns a DateTime obj for the time checked within the gridview
        /// </summary>
        /// <param name="val">value</param>
        /// <param name="selectedDate">date selected</param>
        /// <returns>DateTime of appointment</returns>
        public static DateTime ParseChkBox(string val, DateTime selectedDate)
        {
            int max = 18;
            int actual = GetNumber(val);
            return new DateTime(selectedDate.Year, selectedDate.Month, selectedDate.Day, max - actual, 0, 0);
        }

        /// <summary>
        /// The following function returns the numeric portion of a string 
        /// e.g. TA23 returns 23
        /// </summary>
        /// <param name="val">value</param>
        /// <returns>inter retrieve</returns>
        public static int GetNumber(string val)
        {
            int result = 0;
            var match = Regex.Match(val, @"\d+");
            if (match.Success)
            {
                int.TryParse(match.Value, out result);
            }
            return result;
        }

        /// <summary>
        /// The following function returns true if a username is admin
        /// </summary>
        /// <returns></returns>
        public static bool IsAdmin()
        {
            return HttpContext.Current.User.Identity.Name == "admin";
        }

        /// <summary>
        /// The following function checks if a user is authenticated
        /// </summary>
        /// <returns></returns>
        public static bool IsAuthenticated()
        {
            return HttpContext.Current.User.Identity.IsAuthenticated;
        }

        /// <summary>
        /// The following function checks if a user is anonymous
        /// </summary>
        /// <returns></returns>
        public static bool IsAnonymous()
        {
            return IsAuthenticated() == false;
        }

    }


}





