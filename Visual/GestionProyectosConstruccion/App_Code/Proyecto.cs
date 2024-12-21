
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace GestionProyectos
{
    public class Proyecto
    {
        public int ProyectoID { get; set; }
        [Required]
        public string Codigo { get; set; }
        [Required, StringLength(100)]
        public string Nombre { get; set; }
        [Required]
        public DateTime FechaInicio { get; set; }
        public DateTime? FechaFin { get; set; }
    }
}
