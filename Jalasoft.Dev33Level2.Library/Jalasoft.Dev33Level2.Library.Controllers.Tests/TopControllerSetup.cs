using Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Jalasoft.Dev33Level2.Library.Api.Controllers;
using Jalasoft.Dev33Level2.Library.Models;
using Jalasoft.Dev33Level2.Library.Services;
using Microsoft.Extensions.Logging;

namespace Jalasoft.Dev33Level2.Library.Controllers.Tests
{
    public class TopControllerSetup
    {
        protected Mock<IService<Book>> mockBookService;
        protected TopsController topController;
        protected List<Book> books;
        protected List<Book> EmptyList = new List<Book>();
        public TopControllerSetup()
        {
            mockBookService = new Mock<IService<Book>>();
            topController = new TopsController( new Logger<TopsController>(new LoggerFactory()),mockBookService.Object );    
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