<%@ Page Language="C#" AutoEventWireup="true" Codebehind="MORLSENDQ_itemreconciliation.aspx.cs" Inherits="MORLSENDQ_itemreconciliation" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

    <h1>MORLSENDQ Item Reconciliation</h1>
        Panel
        <br />
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img id="Img1" src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton>
        <asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img id="Img2" src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <!--Add the buttons for download-->
        <asp:Button ID="ButtonDownload" runat="server" Text="Download" onclick="btnDownload_Click"/>
        </asp:Panel>
    <hr />
        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>  
                <div style="position: static; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity:1;">
                    <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="~/Styles/Images/loading.gif" AlternateText="Loading ... Please wait" ToolTip="Loading ... Please wait" style="padding: 10px; position:fixed;top:30%;left:20%; border:thin"/>
                </div>
            </ProgressTemplate>  
        </asp:UpdateProgress>  
            
     <!--Add the items for filtering -->
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
        <ContentTemplate>
        <div style="float: left">
        <asp:RadioButtonList id="RadioButtonListSite" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem value="Colne">Colne</asp:ListItem>
            <asp:ListItem value="Spalding">Spalding</asp:ListItem>
            <asp:ListItem value="Turriff">Turriff</asp:ListItem>
        </asp:RadioButtonList>
        </div>
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Submit" CausesValidation="true"/>
     <br />
     <br />

     <!--Add the GridView for MORLSENDQ-->
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" CellPadding="4" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8">
            <Columns>
                <asp:BoundField DataField="create-date" HeaderText="Create date" SortExpression="create-date" />
                <asp:BoundField DataField="species" HeaderText="Species" SortExpression="species" />
                <asp:BoundField DataField="trans-type" HeaderText="Trans type" SortExpression="trans-type" />
                <asp:BoundField DataField="prod-stage" HeaderText="Prod stage" SortExpression="prod-stage" />
                <asp:BoundField DataField="ext-batch-number" HeaderText="Ext Batch No" SortExpression="ext-batch-number" />
                <asp:BoundField DataField="item-no" HeaderText="Item No" SortExpression="item-no" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no transactions available for today.
            </EmptyDataTemplate>
        </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="MORLSENDQ_ItemReconciliation" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonListSite" Name="var_site" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

      

          </form>
        </body>
</html>
</asp:Content>
