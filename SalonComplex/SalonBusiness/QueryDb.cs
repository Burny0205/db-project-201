using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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

    }
}