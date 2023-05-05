using System.ComponentModel.DataAnnotations;

namespace BlazorPeliculas.Shared.Entidades
{
    public class Genero
    {
        public int Id { get; set; } // Será autogenerado por la base de datos
        [Required(ErrorMessage = "El campo {0} es requerido")] // Para indicar que el campo Nombre es requerido
        public string Nombre { get; set; } = null!;
        public List<GeneroPelicula> GenerosPelicula { get; set; } = new List<GeneroPelicula>();
    }
}
