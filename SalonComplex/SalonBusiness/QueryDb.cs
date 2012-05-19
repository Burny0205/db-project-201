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
            int result = context.appointments.Count(a => a.app_day == date.Date && a.client_id == clientId);
            return result > 0;
        }

    }
}