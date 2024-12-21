
using System;
using System.ComponentModel.DataAnnotations;

namespace GestionProyectosConstruccion.Models
{
    public class Empleado
    {
        public int EmpleadoID { get; set; }

        [Required]
        [StringLength(50)]
        public string NumeroCarnet { get; set; }

        [Required]
        [StringLength(100)]
        public string Nombre { get; set; }

        [Required]
        [DataType(DataType.Date)]
        [CustomValidation(typeof(Empleado), nameof(ValidateEdad))]
        public DateTime FechaNacimiento { get; set; }

        [Required]
        [StringLength(50)]
        [RegularExpression("Administrador|Operario|Peón", ErrorMessage = "Categoría inválida.")]
        public string Categoria { get; set; }

        [Range(250000, 500000)]
        public decimal Salario { get; set; } = 250000;

        [StringLength(255)]
        public string Direccion { get; set; } = "San José";

        [Phone]
        public string Telefono { get; set; }

        [Required]
        [EmailAddress]
        public string Correo { get; set; }

        public static ValidationResult ValidateEdad(DateTime fechaNacimiento, ValidationContext context)
        {
            if (fechaNacimiento > DateTime.Now.AddYears(-18))
            {
                return new ValidationResult("El empleado debe ser mayor de edad.");
            }
            return ValidationResult.Success;
        }
    }
}
