using BlazorPeliculas.Shared.Entidades;
using Microsoft.AspNetCore.Mvc;

namespace BlazorPeliculas.Server.Controllers
{
    [Route("api/generos")]
    [ApiController]
    public class GenerosController : ControllerBase
    {
        private readonly ApplicationDbContext context;
        public GenerosController(ApplicationDbContext context)
        {
            this.context = context;
        }

        [HttpPost]  /*Para insertar un registro*/
        public async Task<ActionResult<int>> Post(Genero genero)
        {
            context.Add(genero);    /*Aquí marcamos el registro para ser guardado*/
            await context.SaveChangesAsync();
            return genero.Id;
        }
    }
}
