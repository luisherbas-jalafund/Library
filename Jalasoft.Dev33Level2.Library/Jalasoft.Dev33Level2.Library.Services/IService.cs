using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jalasoft.Dev33Level2.Library.Services
{
    public interface IService<T>
    {
        public List<T> GetTop(int quantity);
    }
}
