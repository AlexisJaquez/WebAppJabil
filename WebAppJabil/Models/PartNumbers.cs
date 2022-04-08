using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebAppJabil.Models
{
    public class PartNumbers
    {

        [Key]
        public int PKPartNumber { get; set; }
        public string PartNumber { get; set; }
        public int FKCustomers { get; set; }
        public bool Available { get; set; }
    }
}