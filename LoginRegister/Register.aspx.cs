using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SocialApp
{
    using System.Data.SqlClient;
    using System.Security.Cryptography;
    using System.Text;

    namespace Socialll
    {
        public static class Global
        {
            public static string conString = "Data Source=DESKTOP-KNL5H8M\\SQLEXPRESS01;Initial Catalog=Social;Integrated Security=True;Encrypt=True;TrustServerCertificate=True";

        }
    }
    public partial class Register : System.Web.UI.Page
    {
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string Username = txtUsername.Text;
            string Email = txtEmail.Text;
            string Password = HasPasssword(txtPassword.Text);

            using (SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString))
            {
                conn.Open();

                string query = "INSERT INTO Users(Username, Email, Password) Values(@Username, @Email, @Password)";
                SqlCommand cmd=new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Username",Username);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@Password", Password);

                
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            Response.Redirect("Login.aspx");
        }
        private string HasPasssword(string Password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] hashedByte = sha256.ComputeHash(Encoding.UTF8.GetBytes(Password));
                return BitConverter.ToString(hashedByte).Replace("-", "").ToLower();
            }
            
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}