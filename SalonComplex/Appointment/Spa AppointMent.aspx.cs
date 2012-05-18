using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.SalonBusiness;

namespace SalonComplex.Appointment
{
    public partial class SpaAppointMent : Page
    {
        private const int Spa = 3; //default id for spa

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                PopulateSpaRepeater();
            }
        }


        protected void SubmitAppButtonClick(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// This will set gridview checkbox to enabled if an appointment was not set
        /// and disabled if there is already an appointment.
        /// </summary>
        protected Boolean ToggleEnabled(String state)
        {
            return !state.Equals("True") && !state.Equals("true");
        }

        protected void PopulateSpaRepeater()
        {
            rptServices.DataSource = QueryDb.GetServicesFromDb(Spa); ;
            rptServices.DataBind();
        }
    }
}