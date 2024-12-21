
using System;
using System.Linq;

namespace GestionProyectos.Pages.Proyectos
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                using (var context = new GestionProyectosContext())
                {
                    GridViewProyectos.DataSource = context.Proyectos.ToList();
                    GridViewProyectos.DataBind();
                }
            }
        }
    }
}
