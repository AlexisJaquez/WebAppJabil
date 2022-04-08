using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebAppJabil.Models
{
    public class Customers
    {

        [Key]
        public int PKCustomers { get; set; }
        public string Customer { get; set; }
        public string Prefix { get; set; }
        public int FKBuilding { get; set; }

    }
}