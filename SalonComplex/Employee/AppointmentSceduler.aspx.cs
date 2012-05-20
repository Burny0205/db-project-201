using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;

namespace SalonComplex.Employee
{
    public partial class AppointmentSceduler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RunScheduler(object sender, EventArgs e)
        {

            DataClassesLinqSQLDataContext context = Util.GetDbContext();

            // Get appointments for processing
            var appointments = Util.ArrayOfAppointments(DateTime.Now);

            List<int?> schedules = new List<int?>();

            // retrieve a list of appointments that need to be processed
            foreach (Model.Appointment appointment in appointments)
            {
                foreach (var appData in appointment.AppointmentData)
                {
                    if(!schedules.Contains(appData.ScheduleId))
                        schedules.Add(appData.ScheduleId.GetValueOrDefault(0));
                }
            }

            // list of employees for the given schedules. i.e order list by experience
            List<Model.Employee> employees = schedules.Select(schedule => 
                Util.GetEmployeesByScheduleTime(schedule.GetValueOrDefault(0)))
                .ToList().OrderByDescending(a => a.Experience).ToList();

            var d = appointments;
            // var employees = Util.
        }
    }
}