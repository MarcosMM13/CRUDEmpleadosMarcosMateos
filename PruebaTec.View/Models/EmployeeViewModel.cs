using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PruebaTec.View.Models
{
    public class EmployeeViewModel
    {
        [Key]
        public int IdEmployee { get; set; }

        [Required]
        [StringLength(15, ErrorMessage = "El Nombre debe tener menos de 15 caracteres")]        
        public string Employee_Name { get; set; }
        [Required]
        [StringLength(15, ErrorMessage = "El Nombre debe tener menos de 15 caracteres")]
        public string Employee_LastName { get; set; }
        [Required]
        [StringLength(15, ErrorMessage = "El Nombre debe tener menos de 15 caracteres")]
        public string Employee_Email { get; set; }
        
        public decimal? Employee_Salary { get; set; }
    }
}