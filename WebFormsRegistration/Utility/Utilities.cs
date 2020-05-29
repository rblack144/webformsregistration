using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace WebFormsRegistration.Utility
{
    /// <summary>
    /// Random helper functions
    /// </summary>
    public class Utilities
    {
        /// <summary>
        /// Hash the password
        /// </summary>
        /// <param name="password">The password to hash</param>
        /// <returns>The hashed password</returns>
        public static string HashPassword(string password)
        {
            var result = new SHA256Managed().ComputeHash(Encoding.UTF8.GetBytes(password));
            return Encoding.UTF8.GetString(result);
        }

        /// <summary>
        /// The registration password
        /// </summary>
        public static string RegistrationPassword 
        {
            get => ConfigurationManager.AppSettings[Constants.REGISTRATION_KEY];
        }
    }
}