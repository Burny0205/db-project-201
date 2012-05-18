using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.Controls;
using SalonComplex.LinqSQL;
using SalonComplex.Model;
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
            if (TextBoxSpaDate.Text == null)
                return;

            int clientId = Util.GetClientId();

            if (clientId < 1)
                return;
              
            DataClassesLinqSQLDataContext context = Util.GetDbContext();

            DateTime selectedDate = DateTime.Parse(TextBoxSpaDate.Text);

            //app status : 
            //
            // P - Processing
            // B - Book
            // R - Rejected
            // C - Change 
            // D - Done

            //app status : 
            //
            // Y - Yes
            // N - No
            // P - Still processing
            // D - Declined

            //create a new appointment object : i.e. remember it is not an actual confirmed appointment, but a booking


            // check if user already has an appointment.
            if (QueryDb.HasAppointment(clientId, selectedDate))
                return;

            #region Add Appointment to DB
            appointment newApp = new appointment
                                     {
                                         client_id = clientId,
                                         app_day = selectedDate,
                                         notes_requests = comment.Text,
                                         app_status = "P",
                                         visited_status = "P"
                                     };

            //appointment record into the database
            context.appointments.InsertOnSubmit(newApp);
            context.SubmitChanges();
            #endregion

            #region Add Appointment services to DB
            List<appointment_service> appointmentServices = new List<appointment_service>();

            foreach (RepeaterItem dataItem in rptServices.Items)
            {
                ServicesControl servicesControl = (ServicesControl)dataItem.FindControl("ServiceControl");

                bool chkChecked = ((CheckBox)servicesControl.FindControl("chkService")).Checked;
                if (chkChecked)
                {
                    int sId = 0;
                    Int32.TryParse(((HiddenField)servicesControl.FindControl("serviceId")).Value, out sId);
                    appointment_service newAppService = new appointment_service
                                                            {
                                                                app_id = newApp.app_id,
                                                                service_id = sId
                                                            };

                    appointmentServices.Add(newAppService);
                }
            }

            // insert all appointments services selected into the database
            context.appointment_services.InsertAllOnSubmit(appointmentServices);
            context.SubmitChanges();
            #endregion

            #region Add Appointment Employee to Db

            List<List<ItemStore>> itemChecked = new List<List<ItemStore>>();
            List<appointment_emp> appEmps = new List<appointment_emp>();

            foreach(GridViewRow row in GridViewEmpSchedule.Rows)
            {
                var checkboxes = new List<Control>();
                List<ItemStore> item = Util.GetCheckedItems(row, typeof(CheckBox), selectedDate);
                itemChecked.Add(item);

            }

            
            foreach (List<ItemStore> itemStore in itemChecked)
            {
                foreach (ItemStore store in itemStore)
                {
                    appEmps.Add(new appointment_emp
                                    {
                                        app_id = newApp.app_id,
                                        app_time = store.SelectedTime,
                                        emp_id = store.Employee.employee_id,
                                        schedule_id = store.Employee.schedules.Where(a => a.employee_id == store.Employee.employee_id).Select(a => a.schedule_id).FirstOrDefault()
                                    });                    
                }
            }

            context.appointment_emps.InsertAllOnSubmit(appEmps);
            context.SubmitChanges();

            #endregion
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
            rptServices.DataSource = QueryDb.GetServicesFromDb(Spa);
            ;
            rptServices.DataBind();
        }
    }
}