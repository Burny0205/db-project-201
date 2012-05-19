using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace SalonComplex.Model
{
    public class FullCalendar
    {
        public FullCalendar()
        {
            editable = false;
            allDay = false;
        }

        public int id { get; set; }
        public string title { get; set; }

        [JsonProperty(ItemConverterType = typeof(IsoDateTimeConverter))]
        public DateTime start { get; set; }

        [JsonProperty(ItemConverterType = typeof(IsoDateTimeConverter))]
        public DateTime end { get; set; }

        public bool allDay { get; set; }

        public bool editable { get; set; }

        public string color { get; set; }
    }
}