using Dapper;
using Jalasoft.Dev33Level2.Library.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;

namespace Jalasoft.Dev33Level2.Library.DAL
{
    public class TopRepository :IRepository<Book>
    {
        private readonly string connectionString;
        public TopRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public List<Book> Get(int quantity)
        {
            List<Book> groups = new List<Book>();
            string query = @"SELECT * " + 
                           "FROM Book " +
                           "WHERE Id IN (SELECT TOP(@Quantity) IdBook from Book  " +
                           "INNER JOIN  Sale  ON Book.Id = Sale.IdBook " +
                           "GROUP BY IdBook, Title ORDER BY COUNT(IdBook) DESC)";
            try
            {
                using (IDbConnection dbConnection = new SqlConnection(connectionString))
                {
                    groups = dbConnection.Query<Book>(query, new { Quantity = quantity }).ToList();
                }
                return groups;
            }
            catch (SqlException e)
            {
                throw new Exception(e.Message, e);
            }
            
            
        }
    }
}
