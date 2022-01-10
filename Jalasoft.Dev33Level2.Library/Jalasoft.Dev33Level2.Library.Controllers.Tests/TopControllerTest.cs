using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Runtime.ExceptionServices;
using Jalasoft.Dev33Level2.Library.Models;
using Moq;
using Xunit;

namespace Jalasoft.Dev33Level2.Library.Controllers.Tests
{
    public class TopControllerTest : TopControllerSetup
    {
        [Fact]
        public void Top_Success_Return_Status_Code_200_And_List_Of_Books()
        {
            mockBookService.Setup(service => service.GetTop(It.IsAny<int>())).Returns(books);
            var response = topController.Top();
            ObjectResult okObjectResult = (ObjectResult)response;
            Assert.Equal(200, okObjectResult.StatusCode);
            Assert.NotEmpty(okObjectResult.Value as List<Book>);
        }
        
        [Fact]
        public void Top_When_Quantity_Is_Zero_Return_Bad_Request_And_Status_Code_400()
        {
            var response = topController.Top(0);
            ObjectResult result = (ObjectResult)response;
            Assert.Equal(400, result.StatusCode);
        }
        
        [Fact]
        public void Top_When_Quantity_Is_Less_Than_Zero_Return_Bad_Request_And_Status_Code_400()
        {
            var response = topController.Top(-1);
            ObjectResult result = (ObjectResult)response;
            Assert.Equal(400, result.StatusCode);
        }
        
        [Fact]
        public void Top_When_Service_Return_Empty_List_Return_Status_Code_404()
        {
            mockBookService.Setup(service => service.GetTop(It.IsAny<int>())).Returns(EmptyList);
            var response = topController.Top();
            ObjectResult result = (ObjectResult)response;
            Assert.Equal(404, result.StatusCode);
        }
        
        [Fact]
        public void Top_With_Any_InnerException_Return_Status_Code_500()
        {
            Exception exception = new ("", new Exception(""));
            mockBookService.Setup(service => service.GetTop(It.IsAny<int>())).Throws(exception);
            var response = topController.Top();
            ObjectResult result = (ObjectResult)response;
            Assert.Equal(500, result.StatusCode);
        }
    }
}