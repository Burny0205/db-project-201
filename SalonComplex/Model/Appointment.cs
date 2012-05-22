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
        public List<AppData> AppointmentData { get; set; }
        public int NumberOfVisits { get; set; }
        public DateTime? AppointmentDate { get; set; }
        public bool Pass { get; set; }
        public DateTime Chosen { get; set; }
        public int SchedId { get; set; }
        public int EmpId { get; set; }
    }
}