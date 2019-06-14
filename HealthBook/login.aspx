<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HealthBook.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Email:<asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            <br />
            Password:
            <asp:TextBox ID="PasswordTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:CheckBox ID="Reminder" runat="server" Text="Remember me!" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="SubmitButton" runat="server" OnClick="SubmitButton_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>
