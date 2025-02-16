<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Aviral_ASP.Default" %>

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
            <label>Middle Name</label>
            <asp:TextBox ID="txtMiddleName" runat="server" CssClass="form-control" ></asp:TextBox>
        </div>

        <div class="form-group">
            <label>Last Name</label>
            <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" required></asp:TextBox>
        </div>

        

        <div class="form-group">
            <label>Permanent Address</label>
            <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
        </div>
        <div class="form-group">
            <label>Current Address</label>
            <asp:TextBox ID="txtAddress1" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
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
                <asp:ListItem Text="Act" Value="Act"></asp:ListItem>
                <asp:ListItem Text="Inac" Value="Inac"></asp:ListItem>
            </asp:DropDownList>
        </div>

        <div class="form-group">
            <asp:Button ID="btnSubmit" runat="server" CssClass="btn" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
        
    <div>
        <button type="button" class="btn" onclick="window.location.href='userData.aspx';">View Data</button>
    </div>
        
    </div>
       
</form>
        
            
        

    </div>
</body>
</html>
