using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SalonComplex.Appointment
{
    public partial class Spa_AppointMent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
              
            }
        }


        protected void SubmitAppButton_Click(object sender, EventArgs e)
        {

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
    }
}