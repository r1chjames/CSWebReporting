<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Kill_Batches.aspx.cs" Inherits="Kill_Batches" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

        <h1>Kill Batch Summary</h1>

        <asp:GridView ID="GridView1" align="Center" runat="server" AutoGenerateColumns="False" AllowSorting="True" DataSourceID="SqlDataSource1" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                <asp:BoundField DataField="Batch Number" HeaderText="Batch No" ReadOnly="True" SortExpression="Batch Number" />
                <asp:BoundField DataField="Origin" HeaderText="Origin" ReadOnly="True" SortExpression="Origin" />
                <asp:BoundField DataField="Species" HeaderText="Species" ReadOnly="True" SortExpression="Species" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" ReadOnly="True" SortExpression="Quantity" />
                <asp:BoundField DataField="Site" HeaderText="Site" ReadOnly="True" 
                    SortExpression="Site" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no batches available for today
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Summary_MORLKBATCH_listKill" SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
    
    </form>
    </body>
</html>
</asp:Content>
