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

            return HttpContext.Current.User.Identity.IsAuthenticated
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
            string[] cookie = value.Split('|');
            if (cookie.Length > 1)
            {
                int.TryParse(cookie[0], out result);
                return result;

            }
            return result;
        }

        /// <summary>
        /// Retrieve user appointment data from the data structuring in a list of appointment model with a calculated visit
        /// </summary>
        /// <returns></returns>
        public static List<Model.Appointment> ArrayOfAppointments()
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            List<Model.Appointment> appointments = new List<Model.Appointment>();

            var dbappointments = context.appointments;

            foreach (appointment dbappointment in dbappointments)
            {

                List<DateTime?> appTimes = dbappointment.appointment_emps.Where(a => a.app_id == dbappointment.app_id).Select(a => a.app_time).ToList();

                if (appTimes.Count != 3)
                    return null;

                var model = new Model.Appointment
                {
                    AppointmentId = dbappointment.app_id,
                    ClientId = dbappointment.client_id,
                    TimeChose1 = appTimes.ElementAt(0),
                    TimeChose2 = appTimes.ElementAt(1),
                    TimeChose3 = appTimes.ElementAt(2),
                    NumberOfVisits = dbappointments.Count(a => a.client_id == dbappointment.client_id)
                };

                appointments.Add(model);
            }

            return appointments;
        }


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

        public static Control FindControlRecursive(Control root, Type type)
        {
            if (root.Controls.Count != 0)
            {
                foreach (Control c in root.Controls)
                {
                    if (c.GetType() == type)
                        return c;
                    else if (c.HasControls())
                        FindControlRecursive(c, type);
                }
            }

            return null;
        }

        public static List<ItemStore> GetCheckedItems(Control root, Type type, DateTime selectedDate)
        {
            DataClassesLinqSQLDataContext context = GetDbContext();
            List<ItemStore> items = new List<ItemStore>();
            var checkboxes = new List<Control>();
            FindControlRecursive(root, type, ref checkboxes);

            foreach (Control checkbox in checkboxes)
            {
                CheckBox chk = ((CheckBox)checkbox);
                if (chk.Checked && chk.Enabled)
                {
                    int result = 0;
                    int.TryParse(chk.Text, out result);
                    if (context != null ) 
                        items.Add(new ItemStore 
                        {
                            Employee = context.employees.FirstOrDefault(a => a.employee_id == result),
                            SelectedTime = ParseChkBox(chk.ClientID, selectedDate)

                        });
                }
            }

            return items;
        }

        public static DateTime ParseChkBox(string val, DateTime selectedDate)
        {
            int max = 18;
            int actual = GetNumber(val);
            return new DateTime(selectedDate.Year,selectedDate.Month,selectedDate.Day,max-actual,0,0);
        }

        public static int GetNumber(string val)
        {
            int result = 0;
            var match=Regex.Match(val,@"\d+");
            if(match.Success)
            {
                int.TryParse(match.Value, out result);
            }
            return result;
        }
    }


}





