using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalonComplex.Model
{
    public class Appointment
    {
        public int ClientId { get; set; }
        public int AppointmentId { get; set; }
        public TimeSpan? TimeChose1 { get; set; }
        public TimeSpan? TimeChose2 { get; set; }
        public TimeSpan? TimeChose3 { get; set; }
        public int NumberOfVisits { get; set; }
    }
}