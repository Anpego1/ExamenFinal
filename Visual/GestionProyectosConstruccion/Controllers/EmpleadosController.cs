
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using GestionProyectosConstruccion.Models;

namespace GestionProyectosConstruccion.Controllers
{
    public class EmpleadosController : Controller
    {
        private static List<Empleado> empleados = new List<Empleado>();

        public ActionResult Index(string categoria, string nombre)
        {
            var empleadosFiltrados = empleados.AsQueryable();

            if (!string.IsNullOrEmpty(categoria))
            {
                empleadosFiltrados = empleadosFiltrados.Where(e => e.Categoria == categoria);
            }

            if (!string.IsNullOrEmpty(nombre))
            {
                empleadosFiltrados = empleadosFiltrados.Where(e => e.Nombre.Contains(nombre, StringComparison.OrdinalIgnoreCase));
            }

            return View(empleadosFiltrados.ToList());
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Empleado empleado)
        {
            if (ModelState.IsValid)
            {
                if (empleados.Any(e => e.Correo == empleado.Correo || e.NumeroCarnet == empleado.NumeroCarnet))
                {
                    ModelState.AddModelError("", "El correo o número de carnet ya existe.");
                    return View(empleado);
                }

                empleados.Add(empleado);
                return RedirectToAction("Index");
            }

            return View(empleado);
        }
    }
}
