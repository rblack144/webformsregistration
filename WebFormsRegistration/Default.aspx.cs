using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsRegistration.Utility;

namespace WebFormsRegistration
{
    /// <summary>
    /// Default page
    /// </summary>
    public partial class _Default : Page
    {
        /// <summary>
        /// The page load event
        /// </summary>
        /// <param name="sender">Object that called this event</param>
        /// <param name="e">The load event arguments</param>
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// Attempt to sign the user in
        /// </summary>
        /// <param name="sender">The login button</param>
        /// <param name="e">Click event arguments</param>
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var password = txtPassword.Text;
            var defaultPassword = Utilities.RegistrationPassword;

            // TODO: Do password validation
            
            // As long as password exist let the user in
            if(!string.IsNullOrWhiteSpace(password))
            {
                Response.Redirect("Registration.aspx");
            }
        }
    }
}