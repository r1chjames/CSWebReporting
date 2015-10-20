<%@ Page Language="C#" AutoEventWireup="true" Inherits="SANDBOX" MasterPageFile="~/Site.Master" Codebehind="Sandbox.aspx.cs" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

    <h1>Cattle Breed Report</h1>
        <!--Add the buttons for back and refresh-->
        <asp:Button ID="btnBack" runat="server" Text="Back" OnClientClick="JavaScript: window.history.back(1); return false;"/>
        <asp:Button ID="btnRefresh" runat="server" Text="Refresh" CausesValidation="False" OnClientClick="window.location.reload();" onclick="btnRefresh_Click"/>
        <asp:Button ID="ButtonDownload" runat="server" Text="Download" onclick="btnDownload_Click"/>
    <hr />
    
          Date from: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;
        Date to: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
     <!--Add the GridView for MORLSENDQ for Colne-->
     <asp:GridView ID="GridViewColneMORLSENDQ" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" BackColor="White" AllowSorting="True"
            onselectedindexchanged="GridViewColneMORLSENDQ_SelectedIndexChanged"
            >
            <Columns>
                <asp:BoundField DataField="Site" HeaderText="Site" 
                    SortExpression="Site" ReadOnly="True" />
                <asp:BoundField DataField="Month and Year" HeaderText="Month and Year" 
                    SortExpression="Month and Year" ReadOnly="True" />
                <asp:BoundField DataField="breed" HeaderText="breed" ReadOnly="True" 
                    SortExpression="breed" />
                <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" 
                    SortExpression="Total" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no transactions available for today
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="SB_Cattle_Breed_totals" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="2013-01-01" 
                    Name="var_date1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="2013-02-01" 
                    Name="var_date2" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource> 

          </form>
        </body>
</html>
</asp:Content>
