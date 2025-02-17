using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aviral_ASP
{
    public partial class masterSheet : Page
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
        protected void viewData_Click(object sender, EventArgs e)
        {
            Response.Redirect("userData.aspx");
        }


        

        protected void ChangeStatus_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            GridViewRow row = (GridViewRow)btn.NamingContainer;
            int id = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);

            if (btn.Text == "Active")
            {

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "UPDATE Tbl_Aman_Test SET Status = 'ACT' WHERE ID = @ID AND Status = 'INACT'";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", id);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            } else if (btn.Text == "InActive"){
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string query = "UPDATE Tbl_Aman_Test SET Status = 'INACT' WHERE ID = @ID AND Status = 'ACT'";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", id);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                }
            }

            LoadData();
        }



    }
}