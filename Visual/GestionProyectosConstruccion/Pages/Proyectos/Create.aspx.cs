
using System;

namespace GestionProyectos.Pages.Proyectos
{
    public partial class Create : System.Web.UI.Page
    {
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            using (var context = new GestionProyectosContext())
            {
                var proyecto = new Proyecto
                {
                    Codigo = TxtCodigo.Text,
                    Nombre = TxtNombre.Text,
                    FechaInicio = DateTime.Parse(TxtFechaInicio.Text)
                };

                context.Proyectos.Add(proyecto);
                context.SaveChanges();
                Response.Redirect("Index.aspx");
            }
        }
    }
}
