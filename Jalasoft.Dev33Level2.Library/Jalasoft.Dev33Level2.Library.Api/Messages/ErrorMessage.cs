namespace Jalasoft.Dev33Level2.Library.Api.Messages
{
    public class ErrorMessage
    {
        public string Message { get; set; }
        public ErrorMessage(string msg)
        {
            Message = msg;
        }
    }
}