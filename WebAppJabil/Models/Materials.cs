using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebAppJabil.Models
{
    public class Materials : DbContext 
    {

    //    public Materials(DbContextOptions<Materials> dbContext)
    //: base(dbContext)
    //    {
    //    }
        public DbSet<Models.Buildings> Buildings { get; set; }
        public DbSet<Models.Customers> Customers { get; set; }
        public DbSet<Models.PartNumbers> PartNumbers { get; set; }
    }
}