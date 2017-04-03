using System;
using System.Web;
using System.Web.UI;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;
using System.Net.Mail;
using System.Net;


namespace MyTrip
{

	public partial class ForgotPassword : System.Web.UI.Page
	{
		protected void btPassRec_Click(object sender, EventArgs e)
		{
			String connString = System.Configuration.ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();

			MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

			String queryStr = "";

			queryStr = "select * from users where email='" + tbEmailId.Text + "';";

			MySql.Data.MySqlClient.MySqlCommand cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
			conn.Open();
			MySql.Data.MySqlClient.MySqlDataAdapter sda = new MySql.Data.MySqlClient.MySqlDataAdapter(cmd);
			DataTable dt = new DataTable();
			sda.Fill(dt);

			if (dt.Rows.Count != 0)
			{
				String myGUID = Guid.NewGuid().ToString();
				int Uid = Convert.ToInt32(dt.Rows[0][0]);

				MySql.Data.MySqlClient.MySqlCommand cmd2 = new MySql.Data.MySqlClient.MySqlCommand("insert into forgotpassrequest values('" + myGUID + "','"+Uid+"',now())",conn); 				cmd2.ExecuteNonQuery(); 





				//send email

				String ToEmailAddress = dt.Rows[0][3].ToString();
				String Name = dt.Rows[0][4].ToString();
				String EmailBody = "Hi " + Name + ",<br/><br/> Click the Button below to reset your password in MyTrip WebSite!<br/><br/> <a href=\"http://mytripapp.azurewebsites.net/RecoverPassword.aspx?Uid=" + myGUID + "\" target=\"_parent\"><button>Reset Password!</button></a>";
				MailMessage PassRecMail = new MailMessage("youremail@gmail", ToEmailAddress);
				PassRecMail.Body = EmailBody;
				PassRecMail.IsBodyHtml = true;
				PassRecMail.Subject = "Reset Password from MyTrip Application";

				SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
				SMTP.Credentials = new NetworkCredential()
				{
					UserName = "youremail@gmail.com",
					Password = "yourpassword"

				};
				SMTP.EnableSsl = true;
				SMTP.Send(PassRecMail);




				lblPassRec.Text = "Check your email to reset your password!";
				lblPassRec.ForeColor = Color.Green;
			}
			else
			{ 
				lblPassRec.Text = "OOps this Email account does not exist!";
				lblPassRec.ForeColor = Color.Red;
			}
		}
	}
}
