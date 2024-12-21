
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create.aspx.cs" Inherits="Pages_Proyectos_Create" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Crear Proyecto</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Crear Proyecto</h2>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:TextBox ID="TxtCodigo" runat="server" placeholder="Código del Proyecto" />
            <asp:RequiredFieldValidator ControlToValidate="TxtCodigo" ErrorMessage="El Código es obligatorio" runat="server" /><br />
            <asp:TextBox ID="TxtNombre" runat="server" placeholder="Nombre del Proyecto" />
            <asp:RequiredFieldValidator ControlToValidate="TxtNombre" ErrorMessage="El Nombre es obligatorio" runat="server" /><br />
            <asp:TextBox ID="TxtFechaInicio" runat="server" placeholder="Fecha de Inicio" />
            <asp:RequiredFieldValidator ControlToValidate="TxtFechaInicio" ErrorMessage="La Fecha de Inicio es obligatoria" runat="server" /><br />
            <asp:Button ID="BtnSubmit" runat="server" Text="Guardar" OnClick="BtnSubmit_Click" />
        </div>
    </form>
</body>
</html>
