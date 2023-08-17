using PruebaTec.Entities;
using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace PruebaTec.Data
{
    public partial class EvoltisContext : DbContext
    {
        public EvoltisContext()
            : base("name=EvoltisConnection")
        {
        }

        public virtual DbSet<Employees> Employees { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
