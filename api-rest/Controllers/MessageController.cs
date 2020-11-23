using Microsoft.AspNetCore.Mvc;

namespace api_rest.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class MessageController : ControllerBase
    {
        [HttpGet("{name}")]
        public string getTest(string name)
        {
            return $"<h1>hello {name}, te amooooo!!! welcome test ;)</h1>";
        }
    }
}
