namespace PruebaTec.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Employees
    {
        [Key]
        public int IdEmployee { get; set; }

        [StringLength(50)]
        public string Employee_Name { get; set; }

        [StringLength(50)]
        public string Employee_LastName { get; set; }

        public string Employee_Email { get; set; }

        public decimal? Employee_Salary { get; set; }
    }
}
