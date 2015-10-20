<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Business_Summary.aspx.cs" Inherits="Business_Summary" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="refresh" content="120"/>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>
        <h1>Integration Summary</h1>
    
        <div style="text-align: center;">
     	<div style="display: inline-block; margin-right: 20px; vertical-align: top;">
        <h2>Valid OPM batches in Niche</h2>
        <asp:GridView ID="GridViewOPMBatchesDay" align="Center" runat="server" AutoGenerateColumns="False"
            DataSourceID="SqlDataSource3" onselectedindexchanged="GridView3_SelectedIndexChanged" 
            AllowSorting="True" EnableViewState="False" BackColor="White" ShowHeaderWhenEmpty="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Planned start" HeaderText="Planned start date" SortExpression="Planned start date" ReadOnly="True" />
                <asp:BoundField DataField="Created" HeaderText="Create date" SortExpression="Create date" ReadOnly="True" />
                <asp:BoundField DataField="Last updated" HeaderText="Last updated" SortExpression="Last updated" ReadOnly="True" />
                <asp:BoundField DataField="Batch" HeaderText="Batch No" SortExpression="Batch No" ReadOnly="True" />
                <asp:BoundField DataField="Site" HeaderText="Site" ReadOnly="True" SortExpression="Site" />
                <asp:BoundField DataField="Item Description" HeaderText="Item" ReadOnly="True" SortExpression="Item Description" />
                <asp:BoundField DataField="Primary Item" HeaderText="Primary item" ReadOnly="True" SortExpression="Primary Item" />
                <asp:BoundField DataField="Stage" HeaderText="Stage" ReadOnly="True" SortExpression="Stage" />
                <asp:BoundField DataField="Staus" HeaderText="Status" ReadOnly="True" SortExpression="Staus" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no valid OPM batches for today.
            </EmptyDataTemplate>

<RowStyle HorizontalAlign="Left"></RowStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Summary_MORLEBATCH_listOPM" 
         SelectCommandType="StoredProcedure">
        </asp:SqlDataSource>
             <br /><br />
             </div>
                  	<div style="display: inline-block; margin-right: 20px; vertical-align: top;">
        <h2>Material Transaction Summary</h2>
          <asp:GridView ID="GridView5" align="Center" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True" />
                <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" ReadOnly="True" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" ReadOnly="True" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ReadOnly="True" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" ReadOnly="True" >
                </asp:BoundField>
                <asp:BoundField DataField="Volume" HeaderText="Volume" ReadOnly="True" SortExpression="Volume" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            No transactions have been sent today
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="B_MORLSENDQ_CountTotal" 
            SelectCommandType="StoredProcedure"></asp:SqlDataSource>   
                          <br /> <br />
        </div> 
	<div style="display: inline-block; margin-right: 20px; vertical-align: top;">

             <h2>Material Transaction Summary Count</h2>
             <asp:GridView ID="GridView6" align="Center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
                 <Columns>
                     <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True" />
                     <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" ReadOnly="True" />
                     <asp:BoundField DataField="Production Stage" HeaderText="Production stage" SortExpression="Production Stage" ReadOnly="True" />
                     <asp:BoundField DataField="Batch Number" HeaderText="Batch No" SortExpression="Batch Number" ReadOnly="True" />
                     <asp:BoundField DataField="Transaction Type" HeaderText="Trans type" SortExpression="Transaction Type" ReadOnly="True" />
                     <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" ReadOnly="True" />
                     <asp:BoundField DataField="Number of Transactions" HeaderText="Transactions" SortExpression="Number of Transactions" ReadOnly="True" />
                 </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            No transactions have been sent today
            </EmptyDataTemplate>
<RowStyle HorizontalAlign="Left"></RowStyle>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
                 SelectCommand="Summary_MORLSENDQ_CountSummary" 
                 SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
            </div> 

    </form>
   </body>
</html>
</asp:Content>
