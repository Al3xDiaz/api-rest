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
            return $"hello {name}!!! welcome test ;)";
        }
    }
}
