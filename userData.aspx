<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userData.aspx.cs" Inherits="Aviral_ASP.userData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>APP | User Data</title>
    <link rel="stylesheet" type="text/css" href="content/styles.css">
</head>
<body>

    <div class="container">
    <form id="form1" runat="server">
        <h3>User Details</h3>
        <div class="table-container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="True"></asp:GridView>
        </div>
        <br />
        <div class="form-group">
            <asp:Button ID="addData" runat="server" CssClass="btn" Text="Add Data" OnClick="addData_Click" />
        </div>
    </form>
    </div>
</body>
</html>
