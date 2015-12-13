<%@ Page Language="C#" AutoEventWireup="True" Inherits="MORLSENDQ_Custom_SQL" MasterPageFile="~/Site.Master" Codebehind="MORLSENDQ_Custom_SQL.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtFromDate">
    <asp:ScriptManager ID="ScriptManager" runat="server">
    </asp:ScriptManager>

        <h1>Morlsendq SQL Generator</h1>
        
        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton><asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="ButtonDownload" runat="server" Text="Download" onclick="btnDownload_Click" CausesValidation="true" class="download_button" />
        </asp:Panel>
    
        <br /><br />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
        <ContentTemplate>

        <div class="form_block"> 
        <asp:RadioButtonList id="RadioButtonListSite" runat="server" RepeatDirection="Horizontal" class="radio_list">
            <asp:ListItem value="Colne">Colne</asp:ListItem>
            <asp:ListItem value="Spalding">Spalding</asp:ListItem>
            <asp:ListItem value="Turriff">Turriff</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator runat="server" ID="ReqRdoSite" ControlToValidate="RadioButtonListSite" Display="Dynamic"><img id="Img6" src="~/Styles/images/required_white.png" alt="Required Field" runat="server" style="display: block; margin-top: 10px; margin-bottom: 0; margin-left: auto; margin-right: auto;" /></asp:RequiredFieldValidator>
        <br />
            SELECT * FROM PUB.MORLSENDQ WHERE<br />
        <asp:TextBox class="textarea_box" ID="txtWhere" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtWhere" ControlToValidate="txtWhere" Display="Dynamic"><img id="Img2" src="~/Styles/images/required_white.png" alt="Required Field" runat="server" style="display: block; margin-top: 10px; margin-bottom: 0; margin-left: auto; margin-right: auto;" /></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" Text="Submit" CausesValidation="true" class="submit_button" />
        <br />

        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>  
            <div style="display: inline-block; padding-top: 10px; padding-bottom: 10px; height: 100%; width: 100%; text-align: center;">
                <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="~/Styles/Images/now_loading.gif" AlternateText="Loading ... Please wait" ToolTip="Loading ... Please wait" />
            </div>
        </ProgressTemplate>  
        </asp:UpdateProgress>
        </div>

        <div style="display: inline-block; vertical-align: top;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="trans-type" HeaderText="Trans" SortExpression="trans-type" />
                <asp:BoundField DataField="species" HeaderText="Species" SortExpression="species" />
                <asp:BoundField DataField="kill-no" HeaderText="Kill No" SortExpression="kill-no" />
                <asp:BoundField DataField="create-date" HeaderText="Create date" SortExpression="create-date" />
                <asp:BoundField DataField="create-time" HeaderText="Create time" SortExpression="create-time" />
                <asp:BoundField DataField="trans-id" HeaderText="Trans No" SortExpression="trans-id" />
                <asp:BoundField DataField="trans-status" HeaderText="Status" SortExpression="trans-status" />
                <asp:BoundField DataField="error-code" HeaderText="Error code" SortExpression="error-code" />
                <asp:BoundField DataField="error-text" HeaderText="Error text" SortExpression="error-text" />
                <asp:BoundField DataField="ext-line-number" HeaderText="Ext line number" SortExpression="ext-line-number" />
                <asp:BoundField DataField="item-no" HeaderText="Item No" SortExpression="item-no" />
                <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                <asp:BoundField DataField="prod-stage" HeaderText="Prod stage" SortExpression="prod-stage" />
                <asp:BoundField DataField="retry-count" HeaderText="Retry count" SortExpression="retry-count" />
                <asp:BoundField DataField="user-id" HeaderText="User ID" SortExpression="user-id" />
                <asp:CheckBoxField DataField="is-detained" HeaderText="Detained" SortExpression="is-detained" />
                <asp:BoundField DataField="condemned-weight" HeaderText="Condemned weight" SortExpression="condemned-weight" />
                <asp:BoundField DataField="side-no" HeaderText="Side No" SortExpression="side-no" />
                <asp:BoundField DataField="ext-batch-number" HeaderText="Ext Batch No" SortExpression="ext-batch-number" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
                <asp:BoundField DataField="basket-number" HeaderText="Basket No" SortExpression="basket-number" />
                <asp:BoundField DataField="lot-number" HeaderText="LOT No" SortExpression="lot-number" />
                <asp:BoundField DataField="lot-expiry-date" HeaderText="LOT expiry" SortExpression="lot-expiry-date" />
                <asp:BoundField DataField="ext-line-type" HeaderText="EXT line type" SortExpression="ext-line-type" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no records available. Please specify some criteria using the form.
            </EmptyDataTemplate>
            <RowStyle HorizontalAlign="Left" />
        </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="MORLSENDQ_Custom_SQL" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>                
                <asp:ControlParameter ControlID="RadioButtonListSite"
                    Name="var_site" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtWhere"
                    Name="var_where" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>

        </form>
        </body>
</html>
</asp:Content>
