<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AjaxLearning.WebForms.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax Learning</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:ScriptManager ID="scriptManager" runat="server" EnablePartialRendering="true"/>
        <asp:UpdatePanel ID="updatePanel" runat="server">
            <ContentTemplate>
                <asp:Label runat="server" ID="lbl" Text="Click Me!" />

                </br></br>
                
                <asp:Button ID="btn" runat="server" OnClick="btn_Click" Text="Update Label" />
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>
<!--reference : https://ajax.net-tutorials.com/basics/hello-world/-->

