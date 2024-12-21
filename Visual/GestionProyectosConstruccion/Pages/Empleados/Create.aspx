
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="Pages_Empleados_Create" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Crear Empleado</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Crear Empleado</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:TextBox ID="TxtNumeroCarnet" runat="server" placeholder="Número de Carnet" />
            <asp:RequiredFieldValidator ControlToValidate="TxtNumeroCarnet" ErrorMessage="El Número de Carnet es obligatorio" runat="server" /><br />
            <asp:TextBox ID="TxtNombre" runat="server" placeholder="Nombre" />
            <asp:RequiredFieldValidator ControlToValidate="TxtNombre" ErrorMessage="El Nombre es obligatorio" runat="server" /><br />
            <asp:TextBox ID="TxtFechaNacimiento" runat="server" placeholder="Fecha de Nacimiento" />
            <asp:RequiredFieldValidator ControlToValidate="TxtFechaNacimiento" ErrorMessage="La Fecha de Nacimiento es obligatoria" runat="server" /><br />
            <asp:DropDownList ID="DdlCategoria" runat="server">
                <asp:ListItem Text="Seleccione una categoría" Value="" />
                <asp:ListItem Text="Administrador" Value="Administrador" />
                <asp:ListItem Text="Operario" Value="Operario" />
                <asp:ListItem Text="Peón" Value="Peón" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ControlToValidate="DdlCategoria" ErrorMessage="Seleccione una categoría" runat="server" /><br />
            <asp:Button ID="BtnSubmit" runat="server" Text="Guardar" OnClick="BtnSubmit_Click" />
        </div>
    </form>
</body>
</html>
