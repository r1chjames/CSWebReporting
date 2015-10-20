
<%@ Page Language="C#" AutoEventWireup="true" Codebehind="LPKBatch_Seq_Check.aspx.cs" Inherits="LPKBatch_Seq_Check" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

        <h1>Pig/Lamb Kill Batch<br />Consistency Check</h1>
       
        <asp:GridView ID="GridView1" align="Center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Site" HeaderText="Site" ReadOnly="True" SortExpression="Site" />
                <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="Species" HeaderText="Species" ReadOnly="True" SortExpression="Species" />
                <asp:BoundField DataField="Batch No" HeaderText="Batch No" ReadOnly="True" SortExpression="Batch No" />
                <asp:BoundField DataField="LPKBATCH No Weighed" HeaderText="LPKBATCH No weighed" ReadOnly="True" SortExpression="LPKBATCH No Weighed" />
                <asp:BoundField DataField="LPKBATSEQ No Weighed" HeaderText="LPKBATSEQ No weighed" ReadOnly="True" SortExpression="LPKBATSEQ No Weighed" />
                <asp:BoundField DataField="LPBATSEQ No Counted" HeaderText="LPBATSEQ No counted" ReadOnly="True" SortExpression="LPBATSEQ No Counted" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no batch inconsistencies.
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="BAU_LPKBATCH_Seq_Check" SelectCommandType="StoredProcedure" >
        </asp:SqlDataSource>
    </form>
    </body>
</html>
</asp:Content>
