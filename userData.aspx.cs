using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aviral_ASP
{
    public partial class userData : Page
    {
        private string connectionString = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT * FROM Tbl_Aman_Test ORDER BY ID ASC";

                using (SqlDataAdapter adapter = new SqlDataAdapter(query, conn))
                {
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        protected void addData_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

       
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadData();
        }

        
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LoadData();
        }

        
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            GridViewRow row = GridView1.Rows[e.RowIndex];

            string firstName = ((TextBox)row.Cells[2].Controls[0]).Text;
            string middleName = ((TextBox)row.Cells[3].Controls[0]).Text;
            string lastName = ((TextBox)row.Cells[4].Controls[0]).Text;
            string PAddress = ((TextBox)row.Cells[5].Controls[0]).Text;
            string CAddress = ((TextBox)row.Cells[6].Controls[0]).Text;
            string phone = ((TextBox)row.Cells[7].Controls[0]).Text;
            DateTime dob = DateTime.Parse(((TextBox)row.Cells[8].Controls[0]).Text);
            string age = ((TextBox)row.Cells[9].Controls[0]).Text;
            string status = ((TextBox)row.Cells[10].Controls[0]).Text;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "UPDATE Tbl_Aman_Test SET F_Name=@FirstName,M_Name=@middleName, L_Name=@LastName, P_Address=@PAddress, C_Address=@CAddress, Mobile=@PhoneNumber, DOB=@DOB, Age=@Age, Status=@StatusFlag WHERE ID=@ID";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.Parameters.AddWithValue("@FirstName", firstName);
                    cmd.Parameters.AddWithValue("@middleName", middleName);
                    cmd.Parameters.AddWithValue("@LastName", lastName);
                    cmd.Parameters.AddWithValue("@PAddress", PAddress);
                    cmd.Parameters.AddWithValue("@CAddress", CAddress);
                    cmd.Parameters.AddWithValue("@PhoneNumber", phone);
                    cmd.Parameters.AddWithValue("@DOB", dob);
                    cmd.Parameters.AddWithValue("@Age", age);
                    cmd.Parameters.AddWithValue("@StatusFlag", status);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            GridView1.EditIndex = -1;
            LoadData();
        }

      
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);


            //using (SqlConnection conn = new SqlConnection(connectionString))
            //{
                //string query = "DELETE FROM Tbl_Aman_Test WHERE ID=@ID";

                //using (SqlCommand cmd = new SqlCommand(query, conn))
                //{
                    //cmd.Parameters.AddWithValue("@ID", id);
                   // conn.Open();
                    //cmd.ExecuteNonQuery();
                //}
            //}

            LoadData();
        }
    }
}