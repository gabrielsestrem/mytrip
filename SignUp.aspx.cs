using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Security.Cryptography;


public partial class SignUp : System.Web.UI.Page
{


	protected void Page_Load(object sender, EventArgs e)
	{

	}
	protected void btnSignup_Click(object sender, EventArgs e)
	{

		if (tbUname.Text != "" && tbPass.Text != "" && tbName.Text != "" && tbEmail.Text != "" && tbCPass.Text != "")
		{
			if (tbPass.Text == tbCPass.Text)
			{

				String connString = System.Configuration.ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();

				MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
				conn.Open();
				String queryStr = "";


				queryStr = "insert into Users (username, password, email, name, usertype) values('" + tbUname.Text + "','" + tbPass.Text + "','" + tbEmail.Text + "','" + tbName.Text + "', 'U')";

				MySql.Data.MySqlClient.MySqlCommand cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
				cmd.ExecuteReader();
				lblMsg.Text = "Registration Successfull";
				lblMsg.ForeColor = Color.Green;
				Response.Redirect("~/SignIn.aspx");

			}

			else
			{
				lblMsg.ForeColor = Color.Red;
				lblMsg.Text = "Passwords do not match";
			}
		}
		else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All Fields Are Mandatory";

        }
	}

}
