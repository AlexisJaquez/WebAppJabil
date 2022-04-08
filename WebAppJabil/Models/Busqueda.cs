using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.Core.Objects;
using System.Web;

namespace WebAppJabil.Models
{
    public partial class Busqueda 
    {
        public Busqueda()
        {
            this.Busqueda_Result = new HashSet<Busqueda_Result>();
        }
        [Key]
        public string PartNumber { get; set; }
        public string Customer { get; set; }
        public string Building { get; set; }

        public virtual ICollection<Busqueda_Result> Busqueda_Result { get; set; }
    }
}
