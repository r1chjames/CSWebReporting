<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Dashboard.aspx.cs" Inherits="Dashboard" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<meta http-equiv="refresh" content="120"/>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

        <h1>Integration Dashboard</h1>

<%--Begin 'Integration Operation Summary' Datagrid code--%>
        <table style="width: 99%; border: 0; text-align: center;">
        <tr>
        <td style="vertical-align: top; width: 33%; text-align: center;">
        <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel2">
            <ProgressTemplate>  
                <div style="margin-top: 50px; position: absolute; text-align: left; width: 33%; height: 100%; z-index: 9999999; background-color: #fff; opacity: 1; text-align: center;">
                    <asp:Image ID="imgUpdateProgress2" runat="server" ImageUrl="~/Styles/Images/now_loading_2.gif" style="padding-top: 100px;" AlternateText="Loading ... Please wait" ToolTip="Loading ... Please wait" />
                </div>
            </ProgressTemplate>  
        </asp:UpdateProgress>  
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
             <asp:LinkButton ID="LinkButtonRefresh2" runat="server" OnClick="LinkButtonRefresh2_Click" CausesValidation="false"><img id="Img2" src="~/Styles/images/Refresh.png" alt="Refresh" 
            title="Refresh" runat="server"/></asp:LinkButton>
          <h2>Operation Summary</h2>
                 <asp:GridView ID="GridView2" align="Center" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnRowDataBound="GridView2_RowDataBound" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="SITE" HeaderText="Site" SortExpression="SITE" ReadOnly="True" />
                <asp:BoundField DataField="SPECIES" HeaderText="Species" SortExpression="SPECIES" ReadOnly="True" />
                <asp:BoundField DataField="Transaction Type" HeaderText="Trans type" SortExpression="Transaction Type" ReadOnly="True" />
                <asp:BoundField DataField="Production Stage" HeaderText="Prod stage" SortExpression="Production Stage" ReadOnly="True" />
                <asp:BoundField DataField="ticked" HeaderText="Status" SortExpression="ticked" ReadOnly="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Summary_Integration_On_Off" 
            SelectCommandType="StoredProcedure"></asp:SqlDataSource>
      </ContentTemplate> 
    </asp:UpdatePanel> 
    </td>
<%--End 'Integration Operation Summary' Datagrid code--%>

<%--Begin 'Material Transaction Summary' Datagrid code--%>
 <td style="vertical-align: top; width: 33%; text-align: center;">
        <asp:UpdateProgress ID="UpdateProgress3" runat="server" AssociatedUpdatePanelID="UpdatePanel3">
            <ProgressTemplate>  
                <div style="margin-top: 50px; position: absolute; text-align: left; width: 33%; height: 100%; z-index: 9999999; background-color: #fff; opacity: 1; text-align: center;">
                    <asp:Image ID="imgUpdateProgress3" runat="server" ImageUrl="~/Styles/Images/now_loading_2.gif" style="padding-top: 100px;" AlternateText="Loading ... Please wait" ToolTip="Loading ... Please wait"  />
                </div>
            </ProgressTemplate>  
        </asp:UpdateProgress>  
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
            <ContentTemplate>
             <asp:LinkButton ID="LinkButtonRefresh3" runat="server" OnClick="LinkButtonRefresh3_Click" CausesValidation="false"><img id="Img3" src="~/Styles/images/Refresh.png" alt="Refresh" 
            title="Refresh" runat="server"/></asp:LinkButton>
              <h2>Material Transactions</h2>
                 <asp:GridView ID="GridView3" align="Center" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnRowDataBound="GridView3_RowDataBound" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" ReadOnly="True" />
                <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" ReadOnly="True" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" ReadOnly="True" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ReadOnly="True" />
                <asp:BoundField DataField="Volume" HeaderText="Volume" SortExpression="Volume" 
                    ReadOnly="True" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            No transactions have been sent today
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Summary_MORLSENDQ_CountTotal" 
            SelectCommandType="StoredProcedure"></asp:SqlDataSource>   
                      </ContentTemplate> 
    </asp:UpdatePanel> 
</td>
<%--End 'Material Transaction Summary' Datagrid code--%>

<%--Begin 'Unsent Niche Transactions' Datagrid code--%>
 <td style="vertical-align: top; width: 33%; text-align: center;">
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>  
                <div style="margin-top: 50px; position: absolute; text-align: left; width: 33%; height: 100%; z-index: 9999999; background-color: #fff; opacity: 1; text-align: center;">
                    <asp:Image ID="imgUpdateProgress1" runat="server" ImageUrl="~/Styles/Images/now_loading_2.gif" style="padding-top: 100px;" AlternateText="Loading ... Please wait" ToolTip="Loading ... Please wait" />
                </div>
            </ProgressTemplate>  
        </asp:UpdateProgress>  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
             <asp:LinkButton ID="LinkButtonRefresh1" runat="server" OnClick="LinkButtonRefresh1_Click" CausesValidation="false"><img id="Img1" src="~/Styles/images/Refresh.png" alt="Refresh" 
            title="Refresh" runat="server"/></asp:LinkButton>
             <h2>Unsent Transactions</h2>
             <asp:GridView ID="GridView1" align="Center" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" OnRowDataBound="GridView1_RowDataBound" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
                 <Columns>
                     <asp:BoundField DataField="Site" HeaderText="Site" ReadOnly="True" SortExpression="Site" />
                     <asp:BoundField DataField="Type" HeaderText="Type" ReadOnly="True" SortExpression="Type" />
                     <asp:BoundField DataField="Species" HeaderText="Species" ReadOnly="True" SortExpression="Species" />
                     <asp:BoundField DataField="Production Stage" HeaderText="Prod stage" ReadOnly="True" SortExpression="Production Stage" />
                     <asp:BoundField DataField="Volume" HeaderText="Volume" ReadOnly="True" SortExpression="Volume" />
                 </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            No transactions have been sent today
            </EmptyDataTemplate>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
                 SelectCommand="Summary_prodstage_count" 
                 SelectCommandType="StoredProcedure"></asp:SqlDataSource>
     </ContentTemplate> 
    </asp:UpdatePanel> 
    </td>
    </tr>
    </table>
<%--End 'Unsent Niche Transactions' Datagrid code--%>

</form>
</body>
</html>
</asp:Content>