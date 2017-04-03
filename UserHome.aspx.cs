using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Net.Mail;
using System.Net;

namespace MyTrip
{

	public partial class UserHome : System.Web.UI.Page
	{


		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["USERNAME"] != null)
			{
				lblSuccess.Text = "" + Session["USERNAME"].ToString() +"";
			}
			else
			{
				Response.Redirect("~/SignIn.aspx");
			}	
		}

		protected void btnSignOut_Click(object sender, EventArgs e)
		{
			Session["USERNAME"] = null;	
			Response.Redirect("~/Default.aspx");
		}

		protected void btnSend_Click(object sender, EventArgs e)
		{

			if (tbMessage.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbPhone.Text != "")
			{


				//send email
				String EmailAddress = tbEmail.Text;
				String Name = tbName.Text;
				String Message = tbMessage.Text;
				String Phone = tbPhone.Text;
				String EmailBody = "Hi, Messagem from: " + Name + "<br/> Email: " + EmailAddress + "<br/> Phone: " + Phone + "<br/><br/> Message: <br/>" + Message + "";
				MailMessage PassRecMail = new MailMessage("mytrip.app.website@gmail.com", "gabrielmmsestrem@gmail.com");
				PassRecMail.Body = EmailBody;
				PassRecMail.IsBodyHtml = true;
				PassRecMail.Subject = "Messagem from MyTrip WebSite Contact Form";

				SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
				SMTP.Credentials = new NetworkCredential()
				{
					UserName = "mytrip.app.website@gmail.com",
					Password = "MyTripApp123"

				};
				SMTP.EnableSsl = true;
				SMTP.Send(PassRecMail);




				lblMsg.Text = "Your Message have been sent! We'll be in touch. ";
				lblMsg.ForeColor = Color.Green;

				tbName.Text = "";
				tbEmail.Text = "";
				tbPhone.Text = "";
				tbMessage.Text = "";

			}
			else
			{
				lblMsg.ForeColor = Color.Red;
				lblMsg.Text = "All Fields Are Mandatory to Send a Message!";

			}
		}
	}
}
