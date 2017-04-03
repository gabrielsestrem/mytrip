using System;
using System.Web;
using System.Web.UI;
namespace MyTrip
{
	public partial class AdminMaster : System.Web.UI.MasterPage
	{
		

		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["USERNAME"] != null && Session["UTYPE"].ToString() == "A")
			{
				lblSuccessAdmin.Text = "Login Success, Welcome " + Session["USERNAME"].ToString() + "";
			}
			else
			{
				Response.Redirect("~/SignIn.aspx");
			}
		}



		protected void btnAdminOut_Click(object sender, EventArgs e)
		{
			Session["USERNAME"] = null;
			Response.Redirect("~/Default.aspx");
		}
	}
}
