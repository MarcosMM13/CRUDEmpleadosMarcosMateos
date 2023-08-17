using FluentValidation;
using PruebaTec.Business.Validations;
using PruebaTec.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PruebaTec.Business
{
    public class EmployeeBusiness : BaseCRUD<Employees>
    {
        public override void Add(Employees newObj)
        {
            var validator = new EmployeeValidator();
            var validationResult = validator.Validate(newObj);

            if (!validationResult.IsValid)
            {
                var validationErrors = validationResult.Errors.Select(error => error.ErrorMessage);
                throw new Exception(string.Join(Environment.NewLine, validationErrors));
            }

            try
            {
                _context.Employees.Add(newObj);

                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public override void Delete(int id)
        {
            try
            {
                var employees = _context.Employees.Find(id);
                _context.Employees.Remove(employees);
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public override List<Employees> GetAll()
        {
            try
            {
                return _context.Employees.ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public override Employees GetById(int id)
        {
            var categoriaId = _context.Employees.Find(id);
            return categoriaId;
        }

        public override void Update(Employees obj)
        {
            try
            {
                var employee = _context.Employees.Find(obj.IdEmployee);
                employee.Employee_Name = obj.Employee_Name;
                employee.Employee_LastName = obj.Employee_LastName;
                employee.Employee_Email = obj.Employee_Email;
                employee.Employee_Salary = obj.Employee_Salary;

                var validator = new EmployeeValidator();
                var validationResult = validator.Validate(obj);

                if (!validationResult.IsValid)
                {
                    var validationErrors = validationResult.Errors.Select(error => error.ErrorMessage);
                    throw new Exception(string.Join(Environment.NewLine, validationErrors));
                }

                _context.Entry(employee).State = EntityState.Modified;
                _context.SaveChanges();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
