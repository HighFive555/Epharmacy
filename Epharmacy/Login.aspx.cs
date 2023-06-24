using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace Epharmacy
{
	public partial class Login : System.Web.UI.Page
	{


		protected void Page_Load(object sender, EventArgs e)
		{
			lblErrorMessage.Visible = false;

		}



		protected void Button1_Click(object sender, EventArgs e)
		{
            SqlConnection con = new SqlConnection(@"Data Source=MT;Initial Catalog=EPharmacy;Integrated Security=True");
            {
				con.Open();
				string query = "SELECT COUNT(1) FROM Login WHERE Username=@Username AND Password=@Password";
				SqlCommand sqlCmd = new SqlCommand(query, con);
				sqlCmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());
				sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());
				int count = Convert.ToInt32(sqlCmd.ExecuteScalar());

				if (count == 1)
				{
					Session["Username"] = txtUserName.Text.Trim();
					Response.Redirect("Medicines.aspx");
				}
				else
				{
					lblErrorMessage.Visible = true;
				}
			}

		}
	}
}