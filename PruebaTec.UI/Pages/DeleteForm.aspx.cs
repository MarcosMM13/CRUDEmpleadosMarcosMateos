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
    public partial class DeleteForm : System.Web.UI.Page
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
                }
                this.lblTitle.Text = "Eliminar empleado";
                this.btnDelete.Visible = true;
            }
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
    }
}