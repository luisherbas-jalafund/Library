using Moq;
using System;
using System.Linq;
using Xunit;

namespace Jalasoft.Dev33Level2.Library.ServicesTests
{
    public class TopServiceTest  : TopServiceSetup
    {
        [Fact]
        public void GetTop_Ten_Success_Repository_Returns_List_Of_Length_Ten()
        {
            int quantityOfBooks = 10;
            var nBooks = this.books.Take(quantityOfBooks).ToList();
            this.mockBookRepository.Setup(repository => repository.Get(It.IsAny<int>())).Returns(nBooks);
            var result = this.topService.GetTop(quantityOfBooks);
            Assert.Equal(quantityOfBooks, result.Count);
        }

        [Fact]
        public void GetTop_Ten_When_There_Are_Only_Five_Elements_In_Repository_Returns_List_Of_Length_Five()
        {
            int quantityOfBooks = 5;
            var nBooks = this.books.Take(quantityOfBooks).ToList();
            this.mockBookRepository.Setup(repository => repository.Get(It.IsAny<int>())).Returns(nBooks);
            var result = this.topService.GetTop(10);
            Assert.Equal(quantityOfBooks, result.Count);
        }
        
        [Fact]
        public void GetTop_Ten_When_There_Are_No_Books_In_Repository_Returns_Empty_List()
        {
            this.mockBookRepository.Setup(repository => repository.Get(It.IsAny<int>())).Returns(EmptyList);
            var result = this.topService.GetTop(10);
            Assert.Equal(0, result.Count);
        }
    }
}
