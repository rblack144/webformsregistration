using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormsRegistration.Data;

namespace WebFormsRegistration
{
    public partial class Contact : Page
    {
        /// <summary>
        /// Database object
        /// </summary>
        private DatabaseContext _context = new DatabaseContext();

        /// <summary>
        /// Page load
        /// </summary>
        /// <param name="sender">Registration page</param>
        /// <param name="e">Page load event arguments</param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                // Get the list of states
                Database.SetInitializer(new MigrateDatabaseToLatestVersion<DatabaseContext, Migrations.Configuration>());
                ddlState.DataSource = _context.States.ToList();
                ddlState.DataBind();
            }
        }

        /// <summary>
        /// Save the registration information and send the email
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnContinue_Click(object sender, EventArgs e)
        {
            // Create the person
            var person = new WebFormsRegistration.Models.Person
            {
                FirstName = txtFirstName.Text,
                LastName = txtLastName.Text,
                StateId = int.Parse(ddlState.SelectedValue),
                Email = txtEmail.Text,
                SendNewsLetter = chkNewsLetter.Checked
            };

            // Save to the database
            _context.People.Add(person);
            _context.SaveChanges();

            // Send newsletter to person
            if (person.SendNewsLetter)
            {
                // Create email template
                NameValueCollection values = new NameValueCollection();
                values.Add("apikey", "0E475D337E76504E3AF2B808790714E264AA4633A2624E0955C3E811450983D07A7367FA459E7537D8FB429BAA5542AA");
                values.Add("from", "r.b.black01@gmail.com");
                values.Add("fromName", "Ricardo Black");
                values.Add("to", person.Email);
                values.Add("subject", "CONFIRMATION - Speaker Training Meeting");
                values.Add("bodyHtml", EmailTemplate());
                values.Add("isTransactional", "true");

                string address = "https://api.elasticemail.com/v2/email/send";
                using (WebClient client = new WebClient())
                {
                    try
                    {
                        // Send the email and get the response
                        byte[] apiResponse = client.UploadValues(address, values);
                        string response = Encoding.UTF8.GetString(apiResponse);
                    }
                    catch (Exception ex)
                    {
                        // TODO: Error handling
                        string error = "Exception caught: " + ex.Message + "\n" + ex.StackTrace;
                    }
                }
            }

            Response.Redirect("Complete.aspx");
        }

        /// <summary>
        /// Get the html email template
        /// </summary>
        /// <returns>Html email template</returns>
        private string EmailTemplate()
        {
            return "<table style=\"border: 2px solid #dedede; margin-left: auto; margin-right: auto;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\"><thead><tr><th><img style=\"padding-top: 10px; padding-bottom: 10px;\" src=\"https://www.speakcore.com/wp-content/themes/speakcore/_images/speakcore-logo@2x.png\" alt=\"Speakcore\" width=\"208\" height=\"40\" data-rjs=\"3\" data-rjs-processed=\"true\" /></th></tr><tr><td style=\"height: 2px; background-color: #2988b5;\">&nbsp;</td></tr></thead><tbody><tr><td style=\"padding-left: 15px;\"><p>Dear</p><p>On behalf of Pharma Company, Inc. thank you for registering for the Speaker Training Meeting.</p><p>You will receive a formal confirmation email within the next 3-5 business days, including information for booking your travel.</p><p style=\"margin-bottom: 50px;\">Regards,</p></td></tr><tr><td style=\"height: 30px; background-color: #aaaaaa;\">&nbsp;</td></tr></tbody></table>";
        }
    }
}