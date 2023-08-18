<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdmEmpleado.aspx.cs" Inherits="PruebaTec.UI.Pages.AdmEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Administrar Empleado
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.min.js"></script>
    <script>
        function ValidateForm() {
            if ($("#formId").valid()) {
                return true;
            } else {
                return false;
            }
        }

        $(document).ready(function () {
            $("#formId").validate({
                rules: {
                    tbnname: "required",
                    tblastname: "required",
                    tbemail: {
                        required: true,
                        email: true
                    },
                    tbsalary: {
                        required: true,
                        number: true
                    }
                },
                messages: {

                }
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="mx-auto text-center" style="width: 50%">
        <asp:Label runat="server" CssClass="h2" ID="lblTitle"></asp:Label>
    </div>
    <br />
    <form runat="server" class="h-100 d-flex align-items-center justify-content-center" id="formId" clientidmode="Static">
        <div class="w-50">
            <div class="mb-3">
                <label class="form-label">Nombre del Empleado</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbnname"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbnname" CssClass="text-danger" Display="Dynamic" ErrorMessage="El nombre del empleado es requerido." />
              
            </div>
            <div class="mb-3">
                <label class="form-label">Apellido del Empleado</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tblastname"></asp:TextBox>

            </div>
            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbemail"></asp:TextBox>

            </div>
            <div class="mb-3">
                <label class="form-label">Ingrese el salario del empleado</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbsalary"></asp:TextBox>


            </div>
            <div class="mb-3">
                <asp:Button runat="server" CssClass="btn btn-primary" ID="btnCreate" Text="Crear" OnClick="btnCreate_Click" OnClientClick="return ValidateForm();" />
                <asp:Button runat="server" CssClass="btn btn-primary" ID="btnUpdate" Text="Actualizar" Visible="false" OnClick="btnUpdate_Click" OnClientClick="return ValidateForm();" />
                <asp:Button runat="server" CssClass="btn btn-primary" ID="btnDelete" Text="Eliminar" Visible="false" OnClick="btnDelete_Click" />
                <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click" />
            </div>
        </div>
    </form>
</asp:Content>
