using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;


namespace MyTrip
{

	public partial class RecoverPassword : System.Web.UI.Page
	{
		String connString = System.Configuration.ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
		String GUIDvalue;
		DataTable dt = new DataTable();
		int Uid;

		protected void Page_Load(object sender, EventArgs e)
		{
			using (MySql.Data.MySqlClient.MySqlConnection con = new MySql.Data.MySqlClient.MySqlConnection(connString))
			{
				GUIDvalue = Request.QueryString["Uid"];
				if (GUIDvalue != null)
				{
					MySql.Data.MySqlClient.MySqlCommand cmd = new MySql.Data.MySqlClient.MySqlCommand("select * from ForgotPassRequest where id='" + GUIDvalue + "'", con);
					con.Open();
					MySql.Data.MySqlClient.MySqlDataAdapter sda = new MySql.Data.MySqlClient.MySqlDataAdapter(cmd);
					sda.Fill(dt);
					if (dt.Rows.Count != 0)
					{
						Uid = Convert.ToInt32(dt.Rows[0][1]);
					}
					else
					{
						lblMsg.Text = "Your Password Reset Link is Expired or Invalid";
						lblMsg.ForeColor = Color.Red;
					}

				}
				else
				{
					Response.Redirect("~/Default.aspx");
				}
			}
			if (!IsPostBack)
			{
				if (dt.Rows.Count != 0)
				{
					tbNewPass.Visible = true;
					tbConfirmPass.Visible = true;
					lblPassword.Visible = true;
					lblRetypePass.Visible = true;
					btRecPass.Visible = true;
				}
				else
				{
					lblMsg.Text = "Your Password Reset Link is Expired or Invalid";
					lblMsg.ForeColor = Color.Red; 
				}
			}

		}

		protected void btRecPass_Click(object sender, EventArgs e)
		{
			if (tbNewPass.Text != "" && tbConfirmPass.Text != "" && tbNewPass.Text == tbConfirmPass.Text)
			{
				using (MySql.Data.MySqlClient.MySqlConnection con = new MySql.Data.MySqlClient.MySqlConnection(connString))
				{
					MySql.Data.MySqlClient.MySqlCommand cmd = new MySql.Data.MySqlClient.MySqlCommand("update users set password = '" + tbNewPass.Text + "' where id='" + Uid + "'", con);
					con.Open();
					cmd.ExecuteNonQuery();
					MySql.Data.MySqlClient.MySqlCommand cmd2 = new MySql.Data.MySqlClient.MySqlCommand("delete from ForgotPassRequest where Uid='" + Uid + "'", con);
					cmd2.ExecuteNonQuery();
					Response.Redirect("~/SignIn.aspx");

				}
			}
		}


	}
}
