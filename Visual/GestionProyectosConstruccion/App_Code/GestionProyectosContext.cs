
using System;
using System.Data.Entity;

namespace GestionProyectos
{
    public class GestionProyectosContext : DbContext
    {
        public DbSet<Empleado> Empleados { get; set; }
        public DbSet<Proyecto> Proyectos { get; set; }
        public DbSet<Asignacion> Asignaciones { get; set; }

        public GestionProyectosContext() : base("name=DefaultConnection")
        {
        }
    }
}
