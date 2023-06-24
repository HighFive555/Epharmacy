using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;

namespace Epharmacy
{
    public partial class orderList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        SqlConnection con = new SqlConnection(@"Data Source=MT;Initial Catalog=EPharmacy;Integrated Security=True");

     
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[7].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[4].Text;

            string myquery = "SELECT Medicine_Quantity FROM Medicine WHERE Medicine_Name=@MedicineName";
            string connectionString = "Data Source=MT;Initial Catalog=EPharmacy;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(myquery, connection);
                command.Parameters.AddWithValue("@MedicineName", TextBox2.Text);
                connection.Open();
                object result = command.ExecuteScalar();
                if (result != null)
                {
                    TextBox3.Text = result.ToString();
                }
                connection.Close();
            }

            int Request = int.Parse(TextBox1.Text);
            int stock = int.Parse(TextBox3.Text);

           

            if (Request <= stock)
            {
                TextBox5.Text = "yes";
                int Result = stock - Request;
                TextBox4.Text = Result.ToString();
                SqlCommand cmd1 = new SqlCommand("update Medicine set Medicine_Quantity = @MQ where Medicine_Name = @MN", con);
                cmd1.Parameters.AddWithValue("@MQ", Result.ToString());
                cmd1.Parameters.AddWithValue("@MN", TextBox2.Text);

                SqlCommand cmd2 = new SqlCommand("update Request set Status ='Done' where Request_ID= @RI", con);
                cmd2.Parameters.AddWithValue("@RI", GridView1.SelectedRow.Cells[0].Text);

                con.Open();
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "var message = 'There is enough quantity in stock<br/>Request was accepted'; var div = document.createElement('div'); div.innerHTML = message; div.style.padding = '10px'; div.style.backgroundColor = '#4CAF50'; div.style.color = 'white'; div.style.textAlign = 'center'; div.style.fontSize = '18px'; div.style.borderRadius = '5px'; div.style.boxShadow = '0px 2px 2px rgba(0,0,0,0.3)'; document.body.appendChild(div);", true);
            }
            else
            {
                SqlCommand cmd3 = new SqlCommand("update Request set Status ='Pending' where Request_ID= @RI", con);
                cmd3.Parameters.AddWithValue("@RI", GridView1.SelectedRow.Cells[0].Text);

                con.Open();
                cmd3.ExecuteNonQuery();
                con.Close();

                ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "var message = 'There is not enough quantity in stock'; var div = document.createElement('div'); div.innerHTML = message; div.style.padding = '10px'; div.style.backgroundColor = 'red'; div.style.color = 'white'; div.style.textAlign = 'center'; div.style.fontSize = '18px'; div.style.borderRadius = '5px'; div.style.boxShadow = '0px 2px 2px rgba(0,0,0,0.3)'; document.body.appendChild(div);", true);

            }

        }

    }
}