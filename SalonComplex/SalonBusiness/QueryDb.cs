using System;
using System.Collections.Generic;
using System.Linq;
using SalonComplex.LinqSQL;

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
        /// The following function returns a client gicen an id
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
        /// Retrieve appointment data for calendar from database
        /// </summary>
        /// <returns></returns>
        public static List<Model.FullCalendar> GetAppointmentsForCalendar()
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.appointments.Where(a => a.app_status == "P" || a.app_status == "B").Select(
                o => new Model.FullCalendar
                         {
                             id = o.app_id,
                             start = o.appointment_emps.Select(a => a.app_time).FirstOrDefault(),
                             title = o.client.client_fname + " "+ o.client.client_lname,
                             color = o.app_status == "P" ? "grey" : "blue"
                         }).ToList();
        }
    }
}