<%@ Page Language="C#" AutoEventWireup="True" Inherits="MORLSENDQ_Trans_Enquiry" MasterPageFile="~/Site.Master" Codebehind="MORLSENDQ_Trans_Enquiry.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtFromDate">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>

        <h1>Morlsendq Transaction Enquiry</h1>
       
        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Show panel" title="Show panel" runat="server"/></asp:LinkButton>
        <asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Hide panel" title="Hide panel" runat="server" /></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="btnDownload" runat="server" Text="Download" onclick="btnDownload_Click" CausesValidation="true" class="download_button" />
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
        Transaction ID
        <br />
        <asp:TextBox ID="txtTransID" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtTransID" ControlToValidate="txtTransID" Display="Dynamic"><img id="Img3" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
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
                    <asp:BoundField DataField="trans-type" HeaderText="Trans type" SortExpression="trans-type"/>
                    <asp:BoundField DataField="species" HeaderText="Species" SortExpression="species" />
                    <asp:BoundField DataField="kill-no" HeaderText="Kill No" SortExpression="kill-no" />
                    <asp:BoundField DataField="create-date" HeaderText="Create date" SortExpression="create-date" DataFormatString="{0:dd-MM-yyyy}"/>
                    <asp:BoundField DataField="create-time" HeaderText="Create time" SortExpression="create-time" />
                    <asp:BoundField DataField="trans-id" HeaderText="Trans ID" SortExpression="trans-id" />
                    <asp:BoundField DataField="trans-status" HeaderText="Status" SortExpression="trans-status" />
                    <asp:BoundField DataField="error-code" HeaderText="Error code" SortExpression="error-code" />
                    <asp:BoundField DataField="error-text" HeaderText="Error text" SortExpression="error-text" />
                    <asp:BoundField DataField="item-no" HeaderText="Item No" SortExpression="item-no" />
                    <asp:BoundField DataField="weight" HeaderText="Weight" SortExpression="weight" />
                    <asp:BoundField DataField="prod-stage" HeaderText="Prod stage" SortExpression="prod-stage" />
                    <asp:BoundField DataField="ext-batch-number" HeaderText="EXT Batch No" SortExpression="ext-batch-number" />
                    <asp:BoundField DataField="basket-number" HeaderText="Basket No" SortExpression="basket-number" />
                    <asp:BoundField DataField="lot-number" HeaderText="LOT" SortExpression="lot-number" />
                </Columns>
                <EmptyDataTemplate>
                <!--Text to display when no records are available-->
                There are no transactions available. Please specify some criteria using the form.
                </EmptyDataTemplate>
            </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="MORLSENDQ_Trans_Enquiry" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonListSite"
                    Name="var_site" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtTransID"
                    Name="var_transid" PropertyName="Text" Type="String"/>
            </SelectParameters>
        </asp:SqlDataSource>
            </div>

            </form>
        </body>
</html>
</asp:Content>
