<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="AjaxLearning.WebForms.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Timer Control</title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer runat="server" ID="UpdateTimer" Interval="5000" OnTick="UpdateTimer_Tick" />
        <asp:UpdatePanel runat="server" ID="TimedPanel" UpdateMode="Conditional">
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="UpdateTimer" EventName="Tick" />
            </Triggers>
            <ContentTemplate>
                <asp:Label runat="server" ID="DateStampLabel" />
            </ContentTemplate>
        </asp:UpdatePanel>

    </form>
</body>
</html>

<!--reference : https://ajax.net-tutorials.com/controls/timer-control/-->

