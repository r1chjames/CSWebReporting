<%@ Page Language="C#" AutoEventWireup="true" Inherits="Visual_Int_Dashboard" MasterPageFile="~/Site.Master" Codebehind="Visual_Int_Dashboard.aspx.cs" %>
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
    <br />
        <div style="width: 80%; margin: 0px auto;">
        Colne MTL Interface Volumes (Yesterday)
        <br />
        <asp:Chart ID="Chart1" runat="server" Width="1200px" AlternateText="Chart failed to load" DataSourceID="SqlDataSource1">
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisX IntervalAutoMode="VariableCount">
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
            Spalding MTL Interface Volumes (Yesterday)
        <br />
        <asp:Chart ID="Chart2" runat="server" Width="1200px" AlternateText="Chart failed to load" DataSourceID="SqlDataSource1">
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisX IntervalAutoMode="VariableCount">
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
            Turriff MTL Interface Volumes (Yesterday)
        <br />
        <asp:Chart ID="Chart3" runat="server" Width="1200px" AlternateText="Chart failed to load" DataSourceID="SqlDataSource1">
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <AxisX IntervalAutoMode="VariableCount">
                    </AxisX>
                </asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="MTL_Send_Rate" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
        <br />
    </form>
        </body>
</html>
</asp:Content>
