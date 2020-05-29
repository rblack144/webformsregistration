using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace WebFormsRegistration.Models
{
    /// <summary>
    /// US state
    /// </summary>
    public class State
    {
        /// <summary>
        /// System id
        /// </summary>
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }

        /// <summary>
        /// The name of the state
        /// </summary>
        public string Name { get; set; }

        /// <summary>
        /// The abbreviation
        /// </summary>
        public string Abbreviation { get; set; }
    }

    /// <summary>
    /// Person object
    /// </summary>
    public class Person
    {
        /// <summary>
        /// System id
        /// </summary>
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public Guid Id { get; set; }

        /// <summary>
        /// First name
        /// </summary>
        public string FirstName { get; set; }

        /// <summary>
        /// Last name
        /// </summary>
        public string LastName { get; set; }

        /// <summary>
        /// The id of the state they live in
        /// </summary>
        public int StateId { get; set; }

        /// <summary>
        /// hashed password
        /// </summary>
        public string PasswordHash { get; set; }

        /// <summary>
        /// Their email
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// True to send them a news letter
        /// </summary>
        public bool SendNewsLetter { get; set; }
    }
}