using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SalonComplex.Model
{
    public class Appointment
    {
        public int? ClientId { get; set; }
        public int AppointmentId { get; set; }
        public DateTime? TimeChose1 { get; set; }
        public DateTime? TimeChose2 { get; set; }
        public DateTime? TimeChose3 { get; set; }
        public int NumberOfVisits { get; set; }
    }
}