using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace api_rest.User
{
    public class UserService : IUserService
    {
        public bool add(UserDto dto)
        {
            return true;
        }

        public bool delete(int id)
        {
            return true;
        }

        public List<UserDto> get(string input)
        {
            return new List<UserDto> { };
        }

        public bool set(UserDto dto)
        {
            return true;
        }
    }
}
