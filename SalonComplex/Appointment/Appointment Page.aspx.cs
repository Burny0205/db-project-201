using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using SalonComplex.Controls;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;


namespace SalonComplex.Appointment

{
    public partial class Appointment_Page : System.Web.UI.Page
    {
        private static DataClassesLinqSQLDataContext _context = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                LabelSpaAppDate.Font.Italic = true;
                LabelSpaAppDate.Font.Bold = true;
                LabelSpaAppDate.ForeColor = System.Drawing.Color.Crimson;
                LabelSpaAppDate.Font.Size = FontUnit.Large;
                TextBoxSpaDate.ForeColor = System.Drawing.Color.Black;
                SubmitAppButton.Font.Bold = true;
                SubmitAppButton.ForeColor = System.Drawing.Color.DarkGreen;

               

                //Calendar1.ForeColor = System.Drawing.Color.AliceBlue;
                //Calendar1.BackColor = System.Drawing.Color.DodgerBlue;
                //Calendar1.TitleStyle.BackColor = System.Drawing.Color.DarkGreen;
                //Calendar1.DayHeaderStyle.BackColor = System.Drawing.Color.SeaGreen;
                //Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.LightBlue;
                //Calendar1.SelectedDayStyle.ForeColor = System.Drawing.Color.DarkGreen;
                //Calendar1.BorderColor = System.Drawing.Color.DarkBlue;
                //Calendar1.TodayDayStyle.BackColor = System.Drawing.Color.SkyBlue;
                //Calendar1.SelectionMode = CalendarSelectionMode.Day;

               

                RangeValidatorSpa.ControlToValidate = "TextBoxSpaDate";
                RangeValidatorSpa.Type = ValidationDataType.Date;
                RangeValidatorSpa.MinimumValue = DateTime.Now.ToShortDateString();
                RangeValidatorSpa.MaximumValue = DateTime.Now.AddDays(7).ToShortDateString();
                RangeValidatorSpa.ErrorMessage = "Select date between today to next 7 day!";
                SalonDropDownListTime.ClearSelection();
                GetServicesFromDb();
            }
        }

        protected void DateTextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListEmployee(object sender, EventArgs e)
        {

        }

      

        protected void Calendar1SelectionChanged(object sender, EventArgs e)
        {
            TextBoxSpaDate.Text = SpaDateCalendar.SelectedDate.ToString();
           
        }

        protected void SubmitAppButtonClick(object sender, EventArgs e)
        {
            
            DataClassesLinqSQLDataContext context = new DataClassesLinqSQLDataContext();

            int itemCount = SalonDropDownListTime.Items.Count;
            List<string> time = new List<string>();


            time.AddRange(time_stamps.Value.Split(','));

            List<TimeSpan> uTime = Util.GetTimeSpan(time);

            // schedule_id	employee_id
            // 3000	1036 : - default statuses while processing
            // default client id until login page is done - 1000

            //app status : 
            //
            // P - Processing
            // B - Book
            // R - Rejected
            // C - Change 


            //app status : 
            //
            // Y - Yes
            // N - No
            // P - Still processing
            // D - Declined

            //create a new appointment object : i.e. remember it is not an actual confirmed appointment, but a booking
            /*
          appointment newApp = new appointment
                                   {
                                       app_day = SpaDateCalendar.SelectedDate.GetValueOrDefault(DateTime.Now),
                                       employee_id = 1036,
                                       schedule_id = 3000,
                                       client_id = 1000,
                                       app_time1 = uTime.ElementAt(0),
                                       app_time2 = uTime.ElementAt(1),
                                       app_time3 = uTime.ElementAt(2),
                                       notes_requests = comment.Text,
                                       visited_status = "P",
                                       app_status = "P",
                                       service_id = 1000 //service id need to be removed from the db
                                   };

          //appointment record into the database
          context.appointments.InsertOnSubmit(newApp);
          context.SubmitChanges();
          
          List<appointment_service> appointmentServices = new List<appointment_service>();

          foreach (RepeaterItem dataItem in rptServices.Items)
          {
              ServicesControl servicesControl = (ServicesControl)dataItem.FindControl("ServiceControl");

              bool chkChecked = ((CheckBox)servicesControl.FindControl("chkService")).Checked;
              if (chkChecked)
              {
                  int sId = 0;
                  Int32.TryParse(((HiddenField) servicesControl.FindControl("serviceId")).Value, out sId);
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

          LabelSpaAppDate.Text = "A confirmation email will be sent to you as soon as your appointment is finalized. Thank You " +
          SpaDateCalendar.SelectedDate.ToString();
          */
        }


        /// <summary>
        /// This will set gridview checkbox to enabled if an appointment was not set
        /// and disabled if there is already an appointment.
        /// </summary>
        protected Boolean ToggleEnabled(String state)
        {
            if (state.Equals("True") || state.Equals("true"))
            {
                return false;
            }
            else
            {
                return true;
            }

        }

        /// <summary>
        /// Retrieve services from the database
        /// </summary>
        protected void GetServicesFromDb()
        {
            /*
            int qParam = 0;
            qParam = DropDownListServices.SelectedValue == "Spa Services" ? 2 : 1; //retrieve service type from the services drop down
            string empName = DropDownListEmp.SelectedValue;

            employee emp = GetEmployee(empName);

            DataClassesLinqSQLDataContext context = GetDbContext();

            var services = context.services.Where(a => a.type == qParam);

            if(emp != null)
            {
                services = services.Where(p => p.skills.Any(a => a.employee_id == emp.employee_id));
            }

            IEnumerable<service> result = services.Cast<service>().ToList();

            rptServices.DataSource = services;
            rptServices.DataBind();
             */
        }

        /// <summary>
        /// Returns a list of skills for a particular employee
        /// </summary>
        /// <param name="name">employee name</param>
        /// <returns>IEnumerable of employee skills</returns>
        protected IEnumerable<skill> GetEmployeeSkills(string name)
        {
            employee emp = GetEmployee(name);

            if (emp != null)
            {
               DataClassesLinqSQLDataContext context = GetDbContext();
                return context.skills.Where(a => a.employee_id == emp.employee_id);
            }

            return null;
        }

        /// <summary>
        /// Get an employee object from the database
        /// </summary>
        /// <param name="name">employee name</param>
        /// <returns>employee object</returns>
        protected employee GetEmployee(string name)
        {
            int empid;
            int.TryParse(name, out empid);
            DataClassesLinqSQLDataContext context = GetDbContext();
            return context.employees.FirstOrDefault(a => a.employee_id == empid);
        }

        /// <summary>
        /// Retrieve user appointment data from the data structuring in a list of appointment model with a calculated visit
        /// </summary>
        /// <returns></returns>
        protected List<Model.Appointment> ArrayOfAppointments()
        {
            DataClassesLinqSQLDataContext context = GetDbContext();
            List<Model.Appointment> appointments = new List<Model.Appointment>();

            var dbappointments = context.appointments;

            /*
            foreach (var clientAppointment in dbappointments)
            {
                var model = new Model.Appointment
                                {
                                    ClientId = clientAppointment.client_id,
                                    AppointmentId = clientAppointment.app_id,
                                    TimeChose1 = clientAppointment.app_time1,
                                    TimeChose2 = clientAppointment.app_time2,
                                    TimeChose3 = clientAppointment.app_time3,
                                    NumberOfVisits = dbappointments.Count(a => a.client_id == clientAppointment.client_id)
                                };
                appointments.Add(model);
            }
            */
            return appointments;
        }

        /// <summary>
        /// Retrieve DbContext
        /// </summary>
        /// <returns></returns>
        private static DataClassesLinqSQLDataContext GetDbContext()
        {
            if (_context != null)
                return _context;
            return _context = new DataClassesLinqSQLDataContext(Util.GetConnection());
        }


        protected void LoadServices(object sender, EventArgs e)
        {
            GetServicesFromDb();
        }
    }
}