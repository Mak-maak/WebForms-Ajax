<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="AjaxLearning.WebForms.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Panel History</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:ScriptManager ID="scriptManager" runat="server" EnableHistory="true" OnNavigate="ScriptManager_Navigate" EnableSecureHistoryState="false" />
        
        <asp:UpdatePanel ID="colorPanel" runat="server">
            <ContentTemplate>
                <asp:DropDownList runat="server" ID="ddlColor" AutoPostBack="true" OnSelectedIndexChanged="SelectedIndex_Changed">
                    <asp:ListItem Value="Red">Red</asp:ListItem>
                    <asp:ListItem Value="Green">Green</asp:ListItem>
                    <asp:ListItem Value="Blue">Blue</asp:ListItem>
                </asp:DropDownList>
                <br /><br />
                Selected Color: <asp:Label runat="server" ID="lblColor" />
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>

<!--reference : https://ajax.net-tutorials.com/controls/updatepanel-history/-->
