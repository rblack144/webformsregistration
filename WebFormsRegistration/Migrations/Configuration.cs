namespace WebFormsRegistration.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<WebFormsRegistration.Data.DatabaseContext>
    {
        /// <summary>
        /// Configuration
        /// </summary>
        public Configuration()
        {
            AutomaticMigrationsEnabled = false;
        }

        /// <summary>
        /// Seed the database
        /// </summary>
        /// <param name="context">The database context</param>
        protected override void Seed(Data.DatabaseContext context)
        {
            // Add the list of states
            context.States.AddOrUpdate(x => x.Id,
                new Models.State { Id = 1, Name = "New York", Abbreviation = "NY" },
                new Models.State { Id = 2, Name = "New Jersey", Abbreviation = "NJ" });

            base.Seed(context);
        }
    }
}
