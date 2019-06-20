<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="AjaxLearning.WebForms.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Progress Control</title>
</head>
<body>
    <form id="form1" runat="server">
    
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdateProgress runat="server" ID="PageUpdateProgress">
            <ProgressTemplate>
                Loading...
            </ProgressTemplate>
        </asp:UpdateProgress>
        <asp:UpdatePanel runat="server" ID="Panel">
            <ContentTemplate>
                <asp:Button runat="server" ID="UpdateButton" OnClick="UpdateButton_Click" Text="Update" />
            </ContentTemplate>
        </asp:UpdatePanel>
        
    </form>
</body>
</html>

<!--reference : https://ajax.net-tutorials.com/controls/updateprogress-control/-->
