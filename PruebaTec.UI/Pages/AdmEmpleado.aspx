<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdmEmpleado.aspx.cs" Inherits="PruebaTec.UI.Pages.AdmEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Administrar Empleado
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.3/additional-methods.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <script>
        function ValidateForm() {
            if ($("#formId").valid()) {
                return true;
            } else {
                showErrorModal("Por favor, corrija los errores antes de continuar.");
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

        function showSuccessModal() {
            $('#successModal').modal('show');
        }

        function showErrorModal(errorMessage) {
            $('#errorModal .modal-body p').text(errorMessage);
            $('#errorModal').modal('show');
        }
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
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tblastname" CssClass="text-danger" Display="Dynamic" ErrorMessage="El apellido del empleado es requerido." />
            </div>

            <div class="mb-3">
                <label class="form-label">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbemail"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tbemail" CssClass="text-danger" Display="Dynamic" ErrorMessage="El correo electrónico es requerido." />
                <asp:RegularExpressionValidator runat="server" ControlToValidate="tbemail" CssClass="text-danger" Display="Dynamic" ErrorMessage="El correo electrónico no es válido." ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$" />
            </div>
            <div class="mb-3">
                <label class="form-label">Ingrese el salario del empleado</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbsalary"></asp:TextBox>
                <asp:RegularExpressionValidator runat="server" ControlToValidate="tbsalary" CssClass="text-danger" Display="Dynamic" ErrorMessage="El salario debe ser un número válido." ValidationExpression="^\d+(\.\d{1,2})?$" />

            </div>
            <div class="mb-3">
                <asp:Button runat="server" CssClass="btn btn-primary" ID="btnCreate" Text="Crear" Visible="false" OnClick="btnCreate_Click" OnClientClick="return ValidateForm();" />
                <asp:Button runat="server" CssClass="btn btn-primary" ID="btnUpdate" Text="Actualizar" Visible="false" OnClick="btnUpdate_Click" OnClientClick="return ValidateForm();" />
                <asp:Button runat="server" CssClass="btn btn-primary" ID="btnDelete" Text="Eliminar" Visible="false" OnClick="btnDelete_Click" />
                <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click " />
            </div>
        </div>

        <div class="modal fade" id="successModal" tabindex="-1" aria-labelledby="successModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="successModalLabel">Éxito</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Empleado creado exitosamente.
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

    
        <div class="modal fade" id="errorModal" tabindex="-1" aria-labelledby="errorModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="errorModalLabel">Error</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
