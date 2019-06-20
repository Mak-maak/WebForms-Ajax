<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="AjaxLearning.WebForms.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Panel</title>
</head>
<body>

    <form id="form1" runat="server">

        <asp:ScriptManager ID="scriptManager" runat="server" />
        <asp:UpdatePanel ID="updatePanel1" runat="server" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnPanel2" EventName="Click" />
            </Triggers>
            <ContentTemplate>
                <asp:Label ID="lblPanel1" runat="server" Text="Update Panel 1" />
                <br />
                <asp:Button ID="btnPanel1" runat="server" Text="Update Label" OnClick="UpdateButton_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
        <asp:UpdatePanel ID="updatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="lblPanel2" runat="server" Text="Update Panel 2" />
                <br />
                <asp:Button ID="btnPanel2" runat="server" Text="Update Label" OnClick="UpdateButton_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>

</body>
</html>
<!--reference : https://ajax.net-tutorials.com/controls/updatepanel-control/-->
