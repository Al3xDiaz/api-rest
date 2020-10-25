using api_rest.IService;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace api_rest.User
{
    public interface IUserService:ICRUDService<UserDto>
    {
    }
}
