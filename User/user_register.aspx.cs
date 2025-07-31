using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Bus_booking_system.User
{
    public partial class user_register : System.Web.UI.Page
    {
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            string name = txtFullName.Text;
            string email = txtEmail.Text;
            string phone = txtPhone.Text;
            string city = ddlCity.SelectedValue;
            string gender = ddlGender.SelectedValue;
            string password = txtPassword.Text;

            string insertdata = "INSERT INTO [user_data] ([Fullname], [Email], [Phone], [Password], [City], [Gender]) VALUES (@Fullname, @Email, @Phone, @Password, @City, @Gender)";
            using (SqlCommand command = new SqlCommand(insertdata,con))
            {
                command.Parameters.AddWithValue("@Fullname", name);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Phone", phone);
                command.Parameters.AddWithValue("@Password", password);
                command.Parameters.AddWithValue("@City", city);
                command.Parameters.AddWithValue("@Gender", gender);
                command.ExecuteNonQuery();


            }
            {
                
            }
        }
    }
}