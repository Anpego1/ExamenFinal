
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace GestionProyectos
{
    public class Empleado
    {
        public int EmpleadoID { get; set; }
        [Required]
        public string NumeroCarnet { get; set; }
        [Required]
        public string Nombre { get; set; }
        [Required]
        public DateTime FechaNacimiento { get; set; }
        [Required]
        public string Categoria { get; set; }
        [Range(250000, 500000)]
        public decimal Salario { get; set; } = 250000;
        public string Direccion { get; set; } = "San José";
        public string Telefono { get; set; }
        [Required, EmailAddress]
        public string Correo { get; set; }
    }
}
