
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Pages_Proyectos_Index" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Lista de Proyectos</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Lista de Proyectos</h2>
            <asp:GridView ID="GridViewProyectos" runat="server" AutoGenerateColumns="true"></asp:GridView>
        </div>
    </form>
</body>
</html>
