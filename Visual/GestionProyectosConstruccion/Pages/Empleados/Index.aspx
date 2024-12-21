
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Empleados_Index" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lista de Empleados</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Lista de Empleados</h2>
            <asp:GridView ID="GridViewEmpleados" runat="server" AutoGenerateColumns="true"></asp:GridView>
        </div>
    </form>
</body>
</html>
