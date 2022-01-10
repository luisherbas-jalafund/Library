using Jalasoft.Dev33Level2.Library.DAL;
using Jalasoft.Dev33Level2.Library.Models;
using Jalasoft.Dev33Level2.Library.Services;
using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jalasoft.Dev33Level2.Library.ServicesTests
{
    public class TopServiceSetup
    {
        protected Mock<IRepository<Book>> mockBookRepository;
        protected TopService topService;
        protected List<Book> books;
        protected List<Book> EmptyList = new List<Book>();
        public TopServiceSetup()
        {
            this.SetUpConfig();
        }
        private void SetUpConfig()
        {
            this.mockBookRepository = new Mock<IRepository<Book>>();
            this.topService = new TopService(this.mockBookRepository.Object);
            this.books = new List<Book>()
            {
                new Book(),
                new Book(),
                new Book(),
                new Book(),
                new Book(),
                new Book(),
                new Book(),
                new Book(),
                new Book(),
                new Book(),
                new Book(),
            };
        }
    }
}
