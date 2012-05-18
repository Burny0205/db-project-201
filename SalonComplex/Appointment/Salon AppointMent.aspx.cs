using System;
using System.Web.UI;
using SalonComplex.SalonBusiness;

namespace SalonComplex.Appointment
{
    public partial class SalonAppointMent : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                PopulateSpaRepeater();
            }

        }

        protected void SubmitAppButtonClick(object sender, EventArgs e)
        {
          //  LabelSpaAppDate.Text = "Your appointment is: " +
            //SpaDateCalendar.SelectedDate.ToString();
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
            int qParam = SalonDropDownList.SelectedIndex; //retrieve service type from the services drop down
            qParam = Util.RealValue(qParam);
            rptServices.DataSource = QueryDb.GetServicesFromDb(qParam);
            rptServices.DataBind();
        }

        protected void LoadServices(object sender, EventArgs e)
        {
            PopulateSpaRepeater();
        }

    }
}