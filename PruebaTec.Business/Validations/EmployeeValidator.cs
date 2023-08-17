using FluentValidation;
using PruebaTec.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTec.Business.Validations
{
    public class EmployeeValidator : AbstractValidator<Employees>
    {
        public EmployeeValidator()
        {
            RuleFor(employee => employee.Employee_Name).NotEmpty().WithMessage("El nombre del empleado es requerido.");
            RuleFor(employee => employee.Employee_LastName).NotEmpty().WithMessage("El apellido del empleado es requerido.");
            RuleFor(employee => employee.Employee_Email).NotEmpty().EmailAddress().WithMessage("El correo electrónico es requerido y debe ser válido.");
            RuleFor(employee => employee.Employee_Salary).GreaterThan(0).WithMessage("El salario debe ser mayor que cero.");
        }
    }
}
