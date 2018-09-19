using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace HermioneServer.Controllers
{
    [ApiController]
    public class ValuesController : ControllerBase
    {
        [Route("/")]
        [Produces("text/html")]
        public string Get() => System.IO.File.ReadAllText("hermione.html");

    }
}
