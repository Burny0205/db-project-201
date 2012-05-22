using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;
using SalonComplex.SalonBusiness;

namespace SalonComplex.Employee
{
    public partial class AppointmentSceduler : System.Web.UI.Page
    {
        private string _result;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RunScheduler(object sender, EventArgs e)
        {

            DataClassesLinqSQLDataContext context = Util.GetDbContext();

            // Get appointments for processing
            var appointments = QueryDb.ArrayOfAppointments(DateTime.Now);

            if (!appointments.Any())
            {
                lblResultArea.Text = "There are no appointments avialable for processing at this time";
                return;
            }

            List<int?> schedules = new List<int?>();

            // retrieve a list of appointments that need to be processed
            foreach (Model.Appointment appointment in appointments)
            {
                foreach (var appData in appointment.AppointmentData)
                {
                    if (!schedules.Contains(appData.ScheduleId) && appData.ScheduleId != 0)
                        schedules.Add(appData.ScheduleId.GetValueOrDefault(0));
                }
            }

            // list of employees for the given schedules. i.e order list by experience
            List<Model.Employee> employees = schedules.Select(schedule =>
                QueryDb.GetEmployeeByScheduleTime(schedule.GetValueOrDefault(0)))
                .ToList().OrderByDescending(a => a.Experience).ToList();

            foreach (var appointment in appointments)
            {
                List<Model.Appointment> subApp =
                    appointments.Where(a => a.AppointmentDate == appointment.AppointmentDate && a.Pass == false).
                        OrderByDescending(a => a.NumberOfVisits).ToList();

                foreach (var app in subApp)
                {
                    if (app.Pass)
                        break;

                    //app.AppointmentData.Select(a => a.TimeChosen)
                    List<DateTime?> dateTimes = app.AppointmentData.Select(a => a.TimeChosen).ToList();

                    foreach (var employee in employees)
                    {
                        if (app.Pass)
                            break;

                        List<DateTime> tt = employee.AvailableTimes;

                        foreach (var dateTime in dateTimes)
                        {
                            bool contains = tt.Contains(dateTime.Value);
                            if (contains && !app.Pass)
                            {
                                app.Chosen = dateTime.Value;
                                app.Pass = true;
                                app.EmpId = employee.EmployeeId;
                                app.SchedId = employee.SchedId;
                                tt.Remove(dateTime.Value);
                                break;
                            }
                        }
                    }
                }
            }

            // saving results to db

            foreach (var app in appointments)
            {
                if (app.Pass)
                {
                    var appObj = QueryDb.GetAppointmentById(app.AppointmentId);

                    //update the appointment table
                    appObj.app_time = app.Chosen;
                    appObj.app_status = "B";
                    appObj.visited_status = "A";


                    // get the schedule for the selected employee
                    schedule empScd = QueryDb.GetEmployeeSchedByEmpId(app.EmpId);

                    // mark the time and return the schedule
                    //update the schedules table
                    empScd = Util.MarkOffScheduleTime(empScd, app.Chosen);

                    
                    //get the unpicked appEmp
                    List<appointment_emp> appEmp = QueryDb.GetUnpickedTimes(app.AppointmentId, app.Chosen);

                    //delete unpicked appointment emp mapping
                    context.appointment_emps.DeleteAllOnSubmit(appEmp);

                    //submit changes
                    context.SubmitChanges();

                    _result += app.ClientId + " processed. Appointment Scheduled for  "
                                          + app.AppointmentDate.Value.ToLongDateString() + " at " +
                                          app.Chosen.ToShortTimeString() + app.SchedId + " " + app.EmpId + "<br />";
                }
                else
                {
                    //notify users
                    _result += "An appointment could not be scheduled for client " + app.ClientId +
                               ". An email will be sent to the client momentarily ";
                }
            }

            lblResultArea.Text = _result;


        }
    }
}