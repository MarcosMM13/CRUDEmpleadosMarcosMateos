using PruebaTec.Business;
using PruebaTec.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaTec.UI.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        EmployeeBusiness employeeBusiness = new EmployeeBusiness();
        Employees employees = new Employees();
        protected void Page_Load(object sender, EventArgs e)
        {
            GetEmployeesList();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedRow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedRow.Cells[1].Text;
            Response.Redirect("~/Pages/AdmEmpleado.aspx?id=" + id + "&op=U");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedRow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedRow.Cells[1].Text;
            Response.Redirect("~/Pages/DeleteForm.aspx?id=" + id + "&op=U");
        }

        private void GetEmployeesList()
        {
            try
            {
                List<Employees> employeesList = employeeBusiness.GetAll();

                var modifiedList = employeesList.Select(emp => new
                {
                    Id = emp.IdEmployee,
                    Nombre = emp.Employee_Name,
                    Apellido = emp.Employee_LastName,
                    Correo = emp.Employee_Email,
                    Salario = emp.Employee_Salary
                });

                dgvEmpleado.DataSource = modifiedList;
                dgvEmpleado.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}