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

namespace MyTrip
{

	public partial class SignIn : System.Web.UI.Page
	{


		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null) 
				{
					UserName.Text = Request.Cookies["UNAME"].Value;
					Password.Text = Request.Cookies["PWD"].Value;
					CheckBox1.Checked = true;
					
				}
			} 
		
		}
		protected void Button1_Click(object sender, EventArgs e)
		{
			String connString = System.Configuration.ConfigurationManager.ConnectionStrings["myConnectionString"].ToString();

			MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(connString);

			String queryStr = "";

			queryStr = "select * from Users where username='" + UserName.Text + "' and password='" + Password.Text + "';";

			MySql.Data.MySqlClient.MySqlCommand cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
			conn.Open();
			MySql.Data.MySqlClient.MySqlDataAdapter sda = new MySql.Data.MySqlClient.MySqlDataAdapter(cmd);
			DataTable dt = new DataTable();
			sda.Fill(dt);

 			if (dt.Rows.Count != 0)
			{
				if (CheckBox1.Checked)
				{
					Response.Cookies["UNAME"].Value = UserName.Text;
					Response.Cookies["PWD"].Value = Password.Text;

					Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
					Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);

				}
				else
				{
					Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
					Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
					
				}
				string Utype;
				Utype = dt.Rows[0][5].ToString().Trim();

				if (Utype == "U")
				{ 
					Session["USERNAME"] = UserName.Text;
					Session["UTYPE"] = Utype;
					Response.Redirect("~/UserHome.aspx");
				}
				if (Utype == "A")
				{ 
					Session["USERNAME"] = UserName.Text;
					Session["UTYPE"] = Utype;
					Response.Redirect("~/AdminHome.aspx");
				}    

				
			}
			else
			{
				lblError.Text= "Invalid Username or Password! ";
			}



			cmd.ExecuteReader();
		} 
	}
}
