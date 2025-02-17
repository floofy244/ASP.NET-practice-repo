<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="masterSheet.aspx.cs" Inherits="Aviral_ASP.masterSheet" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>APP | User Data</title>
    <link rel="stylesheet" type="text/css" href="content/styles.css" />
</head>
<body>

    <div class="container">
        <form id="form1" runat="server">
            <h2>Master Sheet</h2>
            <div class="form-group">
                <div class="btnContainer">
                    <asp:Button ID="addData" runat="server" CssClass="btn" Text="Add Data" OnClick="addData_Click" />
                    <asp:Button ID="viewData" runat="server" CssClass="btn" Text="View Data" OnClick="viewData_Click" />
                </div>
            </div>
            <div class="table-container">
                <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="True"
                    DataKeyNames="ID" >

                <Columns>
                    <asp:TemplateField HeaderText="Change Status">
                        <ItemTemplate>
                        <asp:Button ID="btnChangeStatus" runat="server" Text='<%# (Eval("Status").ToString() == "INACT") ? "Active":"InActive" %>' CssClass="btn"
                            CommandName="ChangeStatus" CommandArgument='<%# Eval("ID") %>'
                            OnClick="ChangeStatus_Click"
                             />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                    
                </asp:GridView>
            </div>

            <br />

            
             

        </form>
    </div>

</body>
</html>