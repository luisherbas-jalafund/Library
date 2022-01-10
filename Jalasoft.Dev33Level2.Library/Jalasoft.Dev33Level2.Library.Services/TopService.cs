using Jalasoft.Dev33Level2.Library.DAL;
using Jalasoft.Dev33Level2.Library.Models;
using System;
using System.Collections.Generic;

namespace Jalasoft.Dev33Level2.Library.Services
{
    public class TopService : IService<Book>
    {
        IRepository<Book> repository;
        public TopService(IRepository<Book> repository)
        {
            this.repository = repository;
        }

        public List<Book> GetTop(int quantity)
        {
            List<Book> result = repository.Get(quantity);
            return result ;
        }
    }
}
