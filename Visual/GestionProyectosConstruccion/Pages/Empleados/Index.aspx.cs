
using System;
using System.Linq;

namespace GestionProyectos.Pages.Empleados
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var context = new GestionProyectosContext())
                {
                    GridViewEmpleados.DataSource = context.Empleados.ToList();
                    GridViewEmpleados.DataBind();
                }
            }
        }
    }
}
