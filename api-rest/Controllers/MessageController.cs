using Microsoft.AspNetCore.Mvc;

namespace api_rest.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class MessageController : ControllerBase
    {
        [HttpGet]
        public string getTest()
        {
            return "i lava you!!!, my kuroneko";
        }
    }
}
