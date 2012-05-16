using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;

namespace SalonComplex.View
{
    public partial class UserAppointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.ClearContent();
            response.ClearHeaders();
           // response.Buffer = true;
            response.ContentType = "application/json";
            string appArray = GetUserAppointments();
            response.Write(appArray);
            response.End();
        }



        public string GetUserAppointments()
        {
            DataClassesLinqSQLDataContext context = Util.GetDbContext();
            List<Model.FullCalendar> appt = new List<Model.FullCalendar>();
            int clientId = 1; //testing purposes;
            IQueryable<appointment> appointments = context.appointments.Where(a => a.client_id == clientId);
            /*
            foreach (appointment appointment in appointments)
            {
                appt.Add(new Model.FullCalendar
                             {
                                 id = appointment.app_id,
                                 start = "2012-5-16 13:00",
                                 title = appointment.employee.employee_fname
                             });
            }
            */

            appt.Add(new Model.FullCalendar
            {
                id = 0,
                start = DateTime.Now,
                title = "peta-gay hair day :)"
            });

            return JsonConvert.SerializeObject(appt);
        }
    }
}