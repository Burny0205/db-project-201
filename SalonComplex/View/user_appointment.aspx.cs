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
    public partial class UserAppointment : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string appArray = GetUserAppointments();

            if (string.IsNullOrEmpty(appArray))
                return;

            HttpResponse response = HttpContext.Current.Response;
            response.Clear();
            response.ClearContent();
            response.ClearHeaders();
           // response.Buffer = true;
            response.ContentType = "application/json";

            response.Write(appArray);
            response.End();
        }



        public string GetUserAppointments()
        {
            int clientId = Util.GetClientId();
            if (clientId == -1)
                return string.Empty;

            List<Model.FullCalendar> calendarData = QueryDb.GetAppointmentsForCalendar(clientId);
            return JsonConvert.SerializeObject(calendarData);
        }
    }
}