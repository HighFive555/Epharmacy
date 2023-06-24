using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Epharmacy
{
    public partial class About : Page
    {
        SqlConnection Con = new SqlConnection(@"Data Source=MT;Initial Catalog=EPharmacy;Integrated Security=True");

        private void ShowMedicines()
        {
            Con.Open();
            String Query = "select * from Medicine";
            SqlDataAdapter sda = new SqlDataAdapter(Query,Con);
            SqlCommandBuilder Builder = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            MedGV.DataSource = ds.Tables[0];
            MedGV.DataBind();   

            Con.Close();

        }


        private void EditMed()
        {
            if ((Medicine_ID.Value == "" || MName.Value == "" || MType.SelectedIndex == -1 || MQty.Value == "" || MPrice.Value == "" || MMan.SelectedIndex == -1))
            {
                //PRINT Error message
            }
            else
            {
                try
                {


                    Con.Open();
                    SqlCommand cmd = new SqlCommand("update Medicine set Expiry_Date = @EXP,Medicine_Name=@MN,Medicine_Type=@MT,Medicine_Quantity=@MQ,Medicine_Price=@MP,Medicine_Manfuc=@MM where Medicine_ID = @ID", Con);
                    cmd.Parameters.AddWithValue("@ID", Medicine_ID.Value);
                    cmd.Parameters.AddWithValue("@EXP", Expiry_Date.Value);
                    cmd.Parameters.AddWithValue("@MN", MName.Value);
                    cmd.Parameters.AddWithValue("@MT", MType.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@MQ", MQty.Value);
                    cmd.Parameters.AddWithValue("@MP", MPrice.Value);
                    cmd.Parameters.AddWithValue("@MM", MMan.SelectedItem.ToString());
                    //cmd.Parameters.AddWithValue("@MKey", Key);

                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Medicine Updated IN Stock');", true);
                    Con.Close();
                    ShowMedicines();
                }
                catch (Exception)
                {
                    throw;
                }

            }
        }
        private void InsertMed()
        {
            if(Medicine_ID.Value == "" || Expiry_Date.Value == "" || MName.Value == "" || MType.SelectedIndex == -1|| MQty.Value == ""||MPrice.Value == ""||MMan.SelectedIndex == -1)
            {
                //PRINT Error message
            }
            else
            {
                try
                {


                    Con.Open();
                    SqlCommand cmd = new SqlCommand("insert into Medicine(Medicine_ID, Expiry_Date,Medicine_Name,Medicine_Type,Medicine_Quantity,Medicine_Price,Medicine_Manfuc) values(@ID, @EXP,@MN,@MT,@MQ,@MP,@MM)", Con);
                    cmd.Parameters.AddWithValue("@ID", Medicine_ID.Value);
                    cmd.Parameters.AddWithValue("@EXP", Expiry_Date.Value);
                    cmd.Parameters.AddWithValue("@MN", MName.Value);
                    cmd.Parameters.AddWithValue("@MT", MType.SelectedItem.ToString());
                    cmd.Parameters.AddWithValue("@MQ", MQty.Value);
                    cmd.Parameters.AddWithValue("@MP", MPrice.Value);
                    cmd.Parameters.AddWithValue("@MM", MMan.SelectedItem.ToString());
                    cmd.ExecuteNonQuery();
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Medicine Added IN Stock');", true);
                    Con.Close();
                    ShowMedicines();
                }
                catch (Exception)
                {
                    throw;
                }
              
            }
           

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowMedicines();
        }

       

        protected void AddBtn_Click1(object sender, EventArgs e)
        {
            InsertMed();
        }

        //int Key = 0;
        protected void MedGV_SelectedIndexChanged(object sender, EventArgs e)
        {
            Medicine_ID.Value = MedGV.SelectedRow.Cells[1].Text;
            Expiry_Date.Value = MedGV.SelectedRow.Cells[2].Text;
            MName.Value = MedGV.SelectedRow.Cells[3].Text;
            MType.Text = MedGV.SelectedRow.Cells[4].Text;
            MQty.Value = MedGV.SelectedRow.Cells[5].Text;
            MPrice.Value = MedGV.SelectedRow.Cells[6].Text;
            MMan.Text = MedGV.SelectedRow.Cells[7].Text;

          
            

        }

        protected void EditBtn_Click1(object sender, EventArgs e)
        {
            EditMed();
        }
    }
}