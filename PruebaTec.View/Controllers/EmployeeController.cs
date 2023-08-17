using PruebaTec.Business;
using PruebaTec.Entities;
using PruebaTec.View.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGrease;

namespace PruebaTec.View.Controllers
{
    public class EmployeeController : Controller
    {
        EmployeeBusiness logic = new EmployeeBusiness();

        // GET: Employees
        public ActionResult Index()
        {
            List<Employees> employees = logic.GetAll();

            List<EmployeeViewModel> employeeViewModels = employees.Select(e => new EmployeeViewModel
            {
                IdEmployee = e.IdEmployee,
                Employee_LastName = e.Employee_LastName,
                Employee_Name = e.Employee_Name,
                Employee_Email = e.Employee_Email,
                Employee_Salary = e.Employee_Salary
            }).ToList();

            return View(employeeViewModels);
        }
        public ActionResult Insert()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Insert(EmployeeViewModel employeeViewModel)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View(employeeViewModel);
                }

                var employees = new Employees
                {
                    Employee_Name= employeeViewModel.Employee_Name,
                    Employee_LastName= employeeViewModel.Employee_LastName,
                    Employee_Email= employeeViewModel.Employee_Email,   
                    Employee_Salary= employeeViewModel.Employee_Salary
                };

                logic.Add(employees);

                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("Index", "Error");
            }
        }

        // GET: Employees/Edit/
        public ActionResult Edit(int id)
        {
            List<Employees> employees = logic.GetAll();
            var employeeViewModel = employees.Where(e=> e.IdEmployee == id).FirstOrDefault();
            EmployeeViewModel employeeViewModels = new EmployeeViewModel()
            {
                IdEmployee = employeeViewModel.IdEmployee,
                Employee_Name = employeeViewModel.Employee_Name,
                Employee_LastName = employeeViewModel.Employee_LastName,
                Employee_Email = employeeViewModel.Employee_Email,
                Employee_Salary = employeeViewModel.Employee_Salary
            };

            return View(employeeViewModels);
        }

        // POST: Employees/Edit/
        [HttpPost]
        public ActionResult Edit(EmployeeViewModel employeeViewModel)
        {
            try
            {
                if (!ModelState.IsValid)
                {
                    return View(employeeViewModel);
                }

                List<Employees> employees = logic.GetAll();
                var employeeViewModels = employees.Where(e => e.IdEmployee == employeeViewModel.IdEmployee).FirstOrDefault();
                Employees employeeUpdate = new Employees()
                {
                    IdEmployee = employeeViewModel.IdEmployee,
                    Employee_Name = employeeViewModel.Employee_Name,
                    Employee_LastName = employeeViewModel.Employee_LastName,
                    Employee_Email = employeeViewModel.Employee_Email,
                    Employee_Salary = employeeViewModel.Employee_Salary
                };
                logic.Update(employeeUpdate);

                return RedirectToAction("Index");
            }
            catch
            {
                return RedirectToAction("Index", "Error");
            }
        }

        // GET: Employees/Delete/5
        public ActionResult Delete(int id)
        {
            logic.Delete(id);
            return RedirectToAction("Index");
        }

        // POST: Employees/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}