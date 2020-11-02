using Microsoft.VisualStudio.TestTools.UnitTesting;
using api_rest.User;
using System.Collections.Generic;

namespace api_rest_Test
{
    [TestClass]
    public class UserTest
    {
        public IUserService service { get; set; }
        public UserDto dto { get; set; }
        public UserTest()
        {
            service = new UserService();
        }
        [TestMethod]
        public void addUser()
        {
            dto = new UserDto();
            var response = service.add(dto);
            Assert.IsTrue(response);
        }
        [TestMethod]
        public void setUser()
        {
            dto = new UserDto();
            var response = service.set(dto);
            Assert.IsTrue(response);
        }
        [TestMethod]
        public void getUser()
        {
            var response = service.get("");
            Assert.IsInstanceOfType(response,typeof(List<UserDto>));
        }
        [TestMethod]
        public void hiddenUser()
        {
            var response = service.delete(1);
            Assert.IsTrue(response);
        }
    }
}
