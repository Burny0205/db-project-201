using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalonComplex.Appointment
{
    public partial class Salon_AppointMent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                RangeValidatorSpa.ControlToValidate = "TextBoxSpaDate";
                RangeValidatorSpa.Type = ValidationDataType.Date;
                RangeValidatorSpa.MinimumValue = DateTime.Now.ToShortDateString();
                RangeValidatorSpa.MaximumValue = DateTime.Now.AddDays(7).ToShortDateString();
                RangeValidatorSpa.ErrorMessage = "Select date between today to next 7 day!";

                LabelSpaAppDate.Font.Italic = true;
                LabelSpaAppDate.Font.Bold = true;
                LabelSpaAppDate.ForeColor = System.Drawing.Color.Crimson;
                LabelSpaAppDate.Font.Size = FontUnit.Large;
                TextBoxSpaDate.ForeColor = System.Drawing.Color.Black;
                SubmitAppButton.Font.Bold = true;
                SubmitAppButton.ForeColor = System.Drawing.Color.DarkGreen;






            }  

        }

        protected void SubmitAppButton_Click(object sender, EventArgs e)
        {
            LabelSpaAppDate.Text = "Your appointment is: " +
           SpaDateCalendar.SelectedDate.ToString();
        }


        /// <summary>
        /// This will set gridview checkbox to enabled if an appointment was not set
        /// and disabled if there is already an appointment.
        /// </summary>
        protected Boolean toggleEnabled(String state)
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

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            TextBoxSpaDate.Text = SpaDateCalendar.SelectedDate.ToString();
        }
    }
}