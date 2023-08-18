using PruebaTec.Business;
using PruebaTec.Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Data.Entity.Infrastructure.Design.Executor;

namespace PruebaTec.UI.Pages
{
    public partial class AdmEmployee : System.Web.UI.Page
    {
        Employees employees = new Employees();
        EmployeeBusiness employeeBusiness = new EmployeeBusiness();

        public static string sID = "-1";
        public static string sOpc = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    sID = Request.QueryString["id"].ToString();
                }

                if (Request.QueryString["op"] != null)
                {
                    sOpc = Request.QueryString["op"].ToString();

                    switch (sOpc)
                    {
                        case "C":
                            this.lblTitle.Text = "Ingresar  nuevo Empleado";
                            this.btnCreate.Visible = true;
                            break;

                        case "R":
                            this.lblTitle.Text = "Consulta de empleado";
                            this.employees.IdEmployee = int.Parse(sID);
                            break;
                        case "U":
                            this.lblTitle.Text = "Modificar empleado";
                            this.btnUpdate.Visible = true;
                            break;
                        case "D":
                            this.lblTitle.Text = "Eliminar empleado";
                            this.btnDelete.Visible = true;
                            break;
                    }
                }
            }
        }

     

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            try
            {
                sID = Request.QueryString["id"].ToString();
                employees.IdEmployee = int.Parse(sID);
                employees.Employee_Name = tbnname.Text;
                employees.Employee_LastName = tblastname.Text;
                employees.Employee_Email = tbemail.Text;
                employees.Employee_Salary = decimal.Parse(tbsalary.Text);
                employeeBusiness.Update(employees);

            }
            catch (Exception ex)
            {
                throw ex;
            }

            Response.Redirect("Index.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                sID = Request.QueryString["id"].ToString();
                employees.IdEmployee = int.Parse(sID);
                int id = employees.IdEmployee;
                employeeBusiness.Delete(id);
            }
            catch (Exception ex)
            {

                throw ex;
            }


            Response.Redirect("Index.aspx");
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {

            try
            {
                employees.IdEmployee = int.Parse(sID);
                employees.Employee_Name = tbnname.Text;
                employees.Employee_LastName = tblastname.Text;
                employees.Employee_Email = tbemail.Text;
                employees.Employee_Salary = decimal.Parse(tbsalary.Text);
                employeeBusiness.Add(employees);
            }
            catch (Exception ex)
            {
                throw ex;
            }

            Response.Redirect("Index.aspx");
        }
    }
}