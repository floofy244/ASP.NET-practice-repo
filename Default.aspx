<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Final.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ASP.NET Form with SQL Server</title>
    <link rel="stylesheet" type="text/css" href="content/styles.css">
</head>
<body>
    <div class="container">
        <h2>User Registration Form</h2>

        <form id="form1" runat="server">
    <div class="container">
        

    
        <div class="form-group">
            <label>First Name</label>
            <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" required></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Last Name</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" required></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Gender</label>
            <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
            </asp:RadioButtonList>
        </div>

        <div class="form-group">
            <label>Address</label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Phone Number</label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Age</label>
            <asp:TextBox ID="txtAge" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Date of Birth</label>
            <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Status</label>
            <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                <asp:ListItem Text="Active" Value="Active"></asp:ListItem>
                <asp:ListItem Text="Inactive" Value="Inactive"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn" Text="Submit" OnClick="btnSubmit_Click" />
        </div>

        <!-- GridView (Must be inside the form) -->
        <h3>User Details</h3>
        <div class="table-container">
            <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="True"></asp:GridView>
        </div>
    </div>
</form>
    </div>
</body>
</html>