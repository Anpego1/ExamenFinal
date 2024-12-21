
using System;

namespace GestionProyectos.Pages.Empleados
{
    public partial class Create : System.Web.UI.Page
    {
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            using (var context = new GestionProyectosContext())
            {
                var empleado = new Empleado
                {
                    NumeroCarnet = TxtNumeroCarnet.Text,
                    Nombre = TxtNombre.Text,
                    FechaNacimiento = DateTime.Parse(TxtFechaNacimiento.Text),
                    Categoria = DdlCategoria.SelectedValue
                };

                context.Empleados.Add(empleado);
                context.SaveChanges();
                Response.Redirect("Index.aspx");
            }
        }
    }
}
