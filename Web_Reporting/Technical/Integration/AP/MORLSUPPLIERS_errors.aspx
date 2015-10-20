<%@ Page Language="C#" AutoEventWireup="true" Codebehind="MORLSUPPLIERS_errors.aspx.cs" Inherits="MORLSUPPLIERS_errors" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

        <h1>Supplier Errors</h1>

        <div style="text-align: center;">
        <div style="display: inline-block; width: 400px; vertical-align: top;">
        <h2>Suppliers</h2>
        <asp:GridView ID="GridViewCentralMORLSUPPLIERS" align="Center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="LSCODE" HeaderText="LSCODE" SortExpression="LSCODE" />
                <asp:BoundField DataField="SUPP_NAME" HeaderText="Supplier" SortExpression="SUPP_NAME" />
                <asp:BoundField DataField="LINE_STATUS" HeaderText="Status" SortExpression="LINE_STATUS" />
                <asp:BoundField DataField="RETRY_COUNT" HeaderText="Retry count" SortExpression="RETRY_COUNT" />
                <asp:BoundField DataField="ERROR_CODE" HeaderText="Error code" SortExpression="ERROR_CODE" />
                <asp:BoundField DataField="ERROR_TEXT" HeaderText="Error text" SortExpression="ERROR_TEXT" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no errors.
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="MORLSUPPLIERS_Errors_Central" 
            SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            <br />
        </div>

        <div style="display: inline-block; width: 400px; vertical-align: top;">
        <h2>Suppsite</h2>

        <asp:GridView ID="GridViewCentralMORLSUPPSITE" align="Center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowSorting="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="LSCODE" HeaderText="LSCODE" SortExpression="LSCODE" />
                <asp:BoundField DataField="site_name" HeaderText="Site" SortExpression="site_name" />
                <asp:BoundField DataField="SUPP_NAME" HeaderText="Supplier" SortExpression="SUPP_NAME" />
                <asp:BoundField DataField="LINE_STATUS" HeaderText="Status" SortExpression="LINE_STATUS" />
                <asp:BoundField DataField="RETRY_COUNT" HeaderText="Retry count" SortExpression="RETRY_COUNT" />
                <asp:BoundField DataField="ERROR_CODE" HeaderText="Error code" SortExpression="ERROR_CODE" />
                <asp:BoundField DataField="ERROR_TEXT" HeaderText="Error text" SortExpression="ERROR_TEXT" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no errors.
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="MORLSUPPSITE_Errors_Central" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
            <br />
        </div>

        <div style="display: inline-block; width: 400px; vertical-align: top;">
        <h2>Suppcontact</h2>

        <asp:GridView ID="GridViewCentralMORLSUPPCONTACT" align="Center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="LSCODE" HeaderText="LSCODE" SortExpression="LSCODE" />
                <asp:BoundField DataField="SUPP_NAME" HeaderText="Supplier" SortExpression="SUPP_NAME" />
                <asp:BoundField DataField="LINE_STATUS" HeaderText="Status" SortExpression="LINE_STATUS" />
                <asp:BoundField DataField="RETRY_COUNT" HeaderText="Retry count" SortExpression="RETRY_COUNT" />
                <asp:BoundField DataField="ERROR_CODE" HeaderText="Error code" SortExpression="ERROR_CODE" />
                <asp:BoundField DataField="ERROR_TEXT" HeaderText="Error text" SortExpression="ERROR_TEXT" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no errors.
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="MORLSUPPCONTACT_Errors_Central" 
            SelectCommandType="StoredProcedure"></asp:SqlDataSource>

        </div>
        </div>
        </form>

        </body>
</html>
</asp:Content>