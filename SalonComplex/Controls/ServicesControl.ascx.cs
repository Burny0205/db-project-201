using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SalonComplex.LinqSQL;

namespace SalonComplex.Controls
{
    public partial class ServicesControl : System.Web.UI.UserControl
    {
        protected service _service = null;

        public service Services
        {
            set { 
                
                
                this._service = value; 
                if(this._service != null)
                {
                    chkService.InputAttributes.Add("value",_service.service_id + "|" +_service.price);
                    chkService.InputAttributes.Add("onclick", "service_calc()");
                    lblPrice.Text = _service.price.ToString("$###.##");
                   // lblSName.Text = _service.description;
                    serviceId.Value = _service.service_id.ToString(CultureInfo.InvariantCulture);
                }
            
            
            }

            get { return this._service; }
        }
    }
}