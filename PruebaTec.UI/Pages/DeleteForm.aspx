<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DeleteForm.aspx.cs" Inherits="PruebaTec.UI.Pages.DeleteForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Eliminar Empleado
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="mx-auto text-center" style="width: 50%">
        <asp:Label runat="server" CssClass="h2" ID="lblTitle"></asp:Label>
        <h3 class="mx-auto" style="width: 50%">¿Esta seguro que desea eliminar el registro?
        </h3>
    </div>

    <form runat="server" class="h-100 d-flex align-items-center justify-content-center">
        <div class="mb-3">
            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnDelete" Text="Eliminar" Visible="false" OnClick="btnDelete_Click" />
            <asp:Button runat="server" CssClass="btn btn-primary btn-dark" ID="BtnVolver" Text="Volver" Visible="True" OnClick="BtnVolver_Click" />
        </div>
    </form>
</asp:Content>
