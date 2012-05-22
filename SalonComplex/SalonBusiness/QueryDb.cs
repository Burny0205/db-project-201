using System;
using System.Collections.Generic;
using System.Linq;
using SalonComplex.LinqSQL;
using SalonComplex.Model;

namespace SalonComplex.SalonBusiness
{
    public class QueryDb
    {
        /// <summary>
        /// Retrieve a Collection of services from the database
        /// 
        /// men - 1, women -2, spa - 3, child -4
        /// </summary>
        /// <param name="serviceTypeId">service type id</param>
        /// <returns>Collection of matching services</returns>
        public static IEnumerable<service> GetServicesFromDb(int serviceTypeId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();

            var services = context.services.Where(a => a.service_name_id == serviceTypeId);
            
            IEnumerable<service> result = services.Cast<service>().ToList();

            return result;
        }

        /// <summary>
        /// The following function returns a client given an id
        /// </summary>
        /// <param name="clientId">client id</param>
        /// <returns>client</returns>
        public static client GetClientbyId(int clientId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.clients.FirstOrDefault(a => a.client_id == clientId);
        }

        /// <summary>
        /// The following function retrieves an employee object from the db
        /// </summary>
        /// <param name="empId"></param>
        /// <returns>employee</returns>
        public static employee GetEmployeeById(int empId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.employees.FirstOrDefault(a => a.employee_id == empId);
        }

        /// <summary>
        /// The following function retrieves an employee schedule from the db
        /// </summary>
        /// <param name="empId"></param>
        /// <returns></returns>
        public static schedule GetEmployeeSchedByEmpId(int empId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.schedules.FirstOrDefault(a => a.employee_id == empId);            
        }

        /// <summary>
        ///  The following function checks if an appointment as already been set for a client given a date and a service type
        /// </summary>
        /// <param name="clientId">client ID</param>
        /// <param name="date">date of service</param>
        /// <param name="key">service key</param>
        /// <returns>boolean response</returns>
        public static bool HasAppointment(int clientId, DateTime date, int key)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            int result = context.appointments.Count(
                a => a.app_day == date.Date && 
                    a.client_id == clientId && 
                    a.appointment_services.Any(p => p.service.service_name_id == key));
            return result > 0;
        }

        /// <summary>
        /// Retrieve all unppicked appointment -> employee mappings
        /// </summary>
        /// <param name="appTime"></param>
        /// <param name="appDay"></param>
        /// <returns></returns>
        public static List<appointment_emp> GetUnpickedTimes(int appTime, DateTime appDay)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.appointment_emps.Where(a => a.app_id == appTime && a.app_time == appDay).ToList();
        }

        /// <summary>
        /// Retrieve appointment data for calendar from database
        /// </summary>
        /// <returns></returns>
        public static List<FullCalendar> GetAppointmentsForCalendar(int clientId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.appointments.Where(a => (a.app_status == "P" || a.app_status == "B") && a.client_id == clientId).Select(
                o => new FullCalendar
                         {
                             id = o.app_id,
                             start = o.app_status == "B" ? o.app_time : o.appointment_emps.Select(a => a.app_time).FirstOrDefault(),
                             title = o.client.client_fname + " "+ o.client.client_lname,
                             color = o.app_status == "P" ? "grey" : "blue"
                         }).ToList();
        }

        /// <summary>
        /// Retrieve user appointment data from the data structuring in a list of appointment model with a calculated visit
        /// </summary>
        /// <returns></returns>
        public static List<Model.Appointment> ArrayOfAppointments(DateTime date)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            List<Model.Appointment> appointments = new List<Model.Appointment>();

            var dbappointments = context.appointments.Where(a => a.app_day >= date.Date && a.app_status == "P");

            foreach (appointment dbappointment in dbappointments)
            {
                // pull the appointment times from the appointment_emps table
                List<AppData> appTimes = dbappointment.appointment_emps
                    .Where(a => a.app_id == dbappointment.app_id)
                    .Select(a => new AppData
                                     {
                                         EmployeeId = a.emp_id,
                                         TimeChosen = a.app_time,
                                         ScheduleId = a.schedule_id
                                     }).ToList();

                if (appTimes.Count != 3)
                    return null;

                // create an Appointment object
                var model = new Model.Appointment
                                {
                                    AppointmentId = dbappointment.app_id,
                                    AppointmentDate = dbappointment.app_day,
                                    ClientId = dbappointment.client_id,
                                    AppointmentData = appTimes,
                                    NumberOfVisits = dbappointments.Count(a => a.client_id == dbappointment.client_id && a.visited_status == "Y"),
                                    Pass = false
                                };

                appointments.Add(model);
            }

            // order in desc by # of visits
            return appointments.OrderByDescending(a => a.NumberOfVisits).ToList();
        }

        /// <summary>
        /// Retrieve an employee by schedule id 
        /// </summary>
        /// <param name="schId"></param>
        /// <returns></returns>
        public static Model.Employee GetEmployeeByScheduleTime(int schId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();

            employee emp = context.employees.FirstOrDefault(a => a.schedules.Any(p => p.schedule_id == schId));

            if (emp == null)
                return null;
            return new Model.Employee
                       {
                           EmployeeId = emp.employee_id,
                           AvailableTimes = Util.AvailableTime(emp, schId),
                           Experience = (int) emp.employee_yoe,
                           SchedId = schId
                       };
        }

        /// <summary>
        /// Retrieve an appointment by id
        /// </summary>
        /// <param name="appId"></param>
        /// <returns></returns>
        public static appointment GetAppointmentById(int appId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.appointments.FirstOrDefault(a => a.app_id == appId);
        }
    }
}