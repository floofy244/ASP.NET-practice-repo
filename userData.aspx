<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userData.aspx.cs" Inherits="Aviral_ASP.userData" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>APP | User Data</title>
    <link rel="stylesheet" type="text/css" href="content/styles.css" />
    
    <script type="text/javascript">
        function confirmDelete() {
            return confirm("Are you sure you want to delete this entry?");
        }
    </script>
</head>
<body>

    <div class="container">
        <form id="form1" runat="server">
            <h2>User Details</h2>

            <div class="table-container">
                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="True"
                    DataKeyNames="ID" OnRowCommand="GridView1_RowCommand">
                </asp:GridView>
            </div>

            <br />

            <div class="form-group">
                <asp:Button ID="addData" runat="server" CssClass="btn" Text="Add Data" OnClick="addData_Click" />
            </div>

        </form>
    </div>

</body>
</html>
