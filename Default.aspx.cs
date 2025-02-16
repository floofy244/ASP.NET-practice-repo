using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aviral_ASP
{
    public partial class Default : Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "INSERT INTO Tbl_Aman_Test (F_Name, M_Name, L_Name, P_Address, C_Address, Mobile, DOB, Age, Status) VALUES(@firstname, @middlename, @lastname, @permanentaddress, @currentaddress, @phonenumber, @DOB, @age, @Status)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@firstname", txtFirstName.Text.Trim());
                    cmd.Parameters.AddWithValue("@middlename", txtMiddleName.Text.Trim());
                    cmd.Parameters.AddWithValue("@lastname", txtLastName.Text.Trim());
                    cmd.Parameters.AddWithValue("@permanentaddress", txtAddress1.Text.Trim());
                    cmd.Parameters.AddWithValue("@currentaddress", txtAddress1.Text.Trim());
                    cmd.Parameters.AddWithValue("@phonenumber", txtPhoneNumber.Text.Trim());
                    cmd.Parameters.AddWithValue("@age", int.Parse(txtAge.Text.Trim()));
                    cmd.Parameters.AddWithValue("@DOB", DateTime.Parse(txtDOB.Text));
                    cmd.Parameters.AddWithValue("@Status", ddlStatus.Text);

                    cmd.ExecuteNonQuery();
                    conn.Close();
                    Response.Redirect("Default.aspx");
                }
            }

            
        }

        protected void viewData_Click(object sender, EventArgs e)
        {
            Response.Redirect("userData.aspx");
        }
    }
}