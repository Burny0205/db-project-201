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

        public static client GetClientbyId(int clientId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.clients.FirstOrDefault(a => a.client_id == clientId);
        }

        public static employee GetEmployeeById(int empId)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.employees.FirstOrDefault(a => a.employee_id == empId);
        }


        public static bool HasAppointment(int empId, DateTime date)
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            return context.appointments.Any(a => a.app_day == date.Date);
        }

    }
}