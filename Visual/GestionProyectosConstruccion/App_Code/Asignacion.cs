
using System;
using System.ComponentModel.DataAnnotations;

namespace GestionProyectos
{
    public class Asignacion
    {
        public int AsignacionID { get; set; }
        public int EmpleadoID { get; set; }
        public Empleado Empleado { get; set; }
        public int ProyectoID { get; set; }
        public Proyecto Proyecto { get; set; }
        [Required]
        public DateTime FechaAsignacion { get; set; }
    }
}
