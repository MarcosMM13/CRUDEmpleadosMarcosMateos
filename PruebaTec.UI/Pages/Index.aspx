<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="PruebaTec.UI.Pages.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Prueba Tecnica Evoltis
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <form runat="server">
        <br />
        <div class="mx-auto text-center" style="width: auto">
            <h2>Listado De Empleados</h2>
        </div>
        <br />
        <div class="container">
            <div class="row">
                <div class="col align-self-end text-end">
                    <asp:Button runat="server" ID="btnCreate" CssClass="btn btn-primary" Text="Crear nuevo Empleado" Visible="True" OnClick="btnCreate_Click" />
                </div>
            </div>
        </div>
        <br />
        <div class="container-row">
            <div class="table small table-striped-columns">
                <asp:GridView runat="server" ID="dgvEmpleado" class="table table-borderless tablo-hover">
                    <Columns>
                        <asp:TemplateField HeaderText="Acciones">
                            <ItemTemplate>
                                <div class="btn-group">
                                    <div class="mb-3">
                                        <asp:Button runat="server" Text="Actualizar" CssClass="btn btn-warning mr-2" ID="btnUpdate" OnClick="btnUpdate_Click" />
                                    </div>
                                    <div class="mb-3">
                                        <asp:Button runat="server" Text="Borrar" CssClass="btn btn-danger ml-2" ID="btnDelete" OnClick="btnDelete_Click" />
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </form>

</asp:Content>
