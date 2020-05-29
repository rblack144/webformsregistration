using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using WebFormsRegistration.Models;

namespace WebFormsRegistration.Data
{
    /// <summary>
    /// The database context
    /// </summary>
    public class DatabaseContext : DbContext
    {
        /// <summary>
        /// The list of states
        /// </summary>
        public DbSet<State> States { get; set; }

        /// <summary>
        /// The list of registered people
        /// </summary>
        public DbSet<Person> People { get; set; }
    }
}