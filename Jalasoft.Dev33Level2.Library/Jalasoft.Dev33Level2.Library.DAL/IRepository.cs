using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jalasoft.Dev33Level2.Library.DAL
{
    public interface IRepository<T>
    {
        public List<T> Get(int quantity);
    }
}
