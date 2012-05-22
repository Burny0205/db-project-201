using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalonComplex.Model
{
    public class Employee
    {
        public int EmployeeId { get; set; }
        public List<DateTime> AvailableTimes { get; set; }
        public int Experience { get; set; }
        public int SchedId { get; set; }
    }
}