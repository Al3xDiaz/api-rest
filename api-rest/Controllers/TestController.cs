
using Microsoft.AspNetCore.Mvc;

namespace api_rest.Controllers
{
    [ApiController]
    [Route("[controller]")]
    class TestController : ControllerBase
    {
        [HttpGet]
        public string getTest()
        {
            return "i lava you!!!";
        }
    }
}