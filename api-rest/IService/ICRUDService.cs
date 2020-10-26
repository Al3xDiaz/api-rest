using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace api_rest.IService
{
    public interface ICRUDService<T>
    {
        public List<T> get(string input);
        public bool add(T dto);
        public bool set(T dto);
        public bool delete(int id);
    }
}
