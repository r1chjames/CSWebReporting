<%@ Page Language="C#" AutoEventWireup="true" Inherits="Unsent_Transaction_History" MasterPageFile="~/Site.Master" Codebehind="Unsent_Transaction_History.aspx.cs" %>
<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <script runat="server">

</script>
    <html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>
    <h1>Visual Integration Dashboard</h1>
    <hr />
        <div style="width: 80%; margin: 0px auto;">
        <br />
            </div>
        <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource1" OnLoad="Chart1_Load" Width="1115px">
            <Series>
                <asp:Series ChartType="Spline" Name="Series1" XValueMember="Date" YValueMembers="Volume">
                    <Points>
                        <asp:DataPoint YValues="0" />
                    </Points>
                </asp:Series>
                <asp:Series ChartArea="ChartArea1" ChartType="Spline" Name="Series2" XValueMember="Date" YValueMembers="Volume">
                    <Points>
                        <asp:DataPoint YValues="0" />
                    </Points>
                </asp:Series>
                <asp:Series ChartArea="ChartArea1" ChartType="Spline" Name="Series3" XValueMember="Date" YValueMembers="Volume">
                    <Points>
                        <asp:DataPoint YValues="0" />
                    </Points>
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" SelectCommand="select &quot;Date&quot;, &quot;Site&quot;, &quot;Volume&quot; from dbo.MTL_Status_History
where &quot;Description&quot; = 'Not Sent'
order by &quot;Date&quot; desc"></asp:SqlDataSource>
        <br />
    </form>
        </body>
</html>
</asp:Content>
