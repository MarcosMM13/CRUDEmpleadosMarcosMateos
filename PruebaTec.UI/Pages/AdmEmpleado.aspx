<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AdmEmpleado.aspx.cs" Inherits="PruebaTec.UI.Pages.AdmEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Administrar Empleado
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="mx-auto" style="width: 250px">
        <asp:Label runat="server" CssClass="h2" ID="lblTitle"></asp:Label>
    </div>
    <form runat="server" class="h-100 d-flex align-items-center justify-content-center">
        <div>
            <div class="mb-3">
                <label class="form-label">Nombre del Empleado</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="tbnname"></asp:TextBox>
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
            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnCreate" Text="Create" Visible="false" OnClick="btnCreate_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnUpdate" Text="Update" Visible="false" onclick="btnUpdate_Click"/>
            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnDelete" Text="Delete" Visible="false" OnClick="btnDelete_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click"/>
        </div>
    </form>
</asp:Content>