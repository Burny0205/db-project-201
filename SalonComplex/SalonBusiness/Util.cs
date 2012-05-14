using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using SalonComplex.LinqSQL;

namespace SalonComplex.SalonBusiness
{
    public class Util
    {

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