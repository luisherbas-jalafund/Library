using Jalasoft.Dev33Level2.Library.Models;
using Jalasoft.Dev33Level2.Library.Services;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Jalasoft.Dev33Level2.Library.Api.Messages;
using Microsoft.AspNetCore.Mvc.ModelBinding;

namespace Jalasoft.Dev33Level2.Library.Api.Controllers
{
    [ApiController]
    [Route("/api/v1/sales/[controller]")]
    public class TopsController : ControllerBase
    {


        private readonly ILogger<TopsController> logger;
        private readonly IService<Book> service;

        public TopsController(ILogger<TopsController> logger, IService<Book> service)
        {
            this.logger = logger;
            this.service = service;
        }

        [ProducesResponseType(typeof(List<Book>), 200)]
        [ProducesResponseType(typeof(ErrorMessage), 400)]
        [ProducesResponseType(typeof(ErrorMessage), 404)]
        [ProducesResponseType(typeof(ErrorMessage), 500)]
        [HttpGet]
        public IActionResult Top(int quantity = 10)
        {
            ObjectResult objectResult;
            try
            {
                if (quantity is <= 0 or > 100)
                    throw new ArgumentOutOfRangeException(@"'quantity' must be greater than 0 and less than 100");
                List<Book> response = service.GetTop(quantity);
                if (response == null || response.Count == 0)
                {
                    throw new Exception("Nothing to show on top");
                }
                objectResult = new ObjectResult(response) { StatusCode = 200 };

            }
            catch (ArgumentOutOfRangeException ex)
            {
                logger.LogWarning(ex.Message);
                objectResult = new ObjectResult(new ErrorMessage(ex.Message)) { StatusCode = 400 };
            }
            catch (Exception ex)
            {
                if (ex.InnerException != null)
                {
                    logger.LogWarning(ex.Message);
                    objectResult = new ObjectResult(new ErrorMessage(ex.Message)) { StatusCode = 500 };
                }
                else
                {
                    logger.LogWarning(ex.Message);
                    objectResult = new ObjectResult(new ErrorMessage(ex.Message)) { StatusCode = 404 };
                }

            }
            return objectResult;
        }
            
    }
}

