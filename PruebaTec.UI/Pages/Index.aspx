<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PruebaTec.UI.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Prueba Tecnica Evoltis
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <br />
        <div class="mx-auto" style="width:300px">
            <h2>Listado De Empleados</h2>
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col aling-self-end">
                    <asp:Button runat="server" ID="btnCreate" CssClass="btn btn-sucess form-control" Text="Create" OnClick="btnCreate_Click"/>
                </div>
            </div>
        </div>
        <br />
        <div class="container-row">
            <div class="table small">
                <asp:GridView runat="server" ID="dgvEmpleado" class="table table-borderless tablo-hover">
                    <Columns>
                        <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <asp:Button runat="server" Text="Read" CssClass="btn form-control btn-info" ID="btnRead" OnClick="btnRead_Click"/>
                                <asp:Button runat="server" Text="Actualizar" CssClass="btn form-control btn-warning" ID="btnUpdate" OnClick="btnUpdate_Click"/>
                                <asp:Button runat="server" Text="Borrar" CssClass="btn form-control btn-danger" ID="btnDelete" OnClick="btnDelete_Click"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>
</asp:Content>
