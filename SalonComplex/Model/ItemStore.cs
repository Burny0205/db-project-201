using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SalonComplex.LinqSQL;

namespace SalonComplex.Model
{
    public class ItemStore
    {
        public employee Employee { get; set; }
        public DateTime SelectedTime { get; set; }
    }
}