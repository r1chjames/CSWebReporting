﻿<%@ Page Language="C#" AutoEventWireup="true" Codebehind="MORLPAYCERTS_trans.aspx.cs" Inherits="MORLPAYCERTS_trans" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

        <h1>Payment Certificate Transactions</h1>

        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img id="Img1" src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton>
        <asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img id="Img2" src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="ButtonDownload" runat="server" Text="Download" onclick="btnDownload_Click" class="download_button" />     
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
                <asp:BoundField DataField="SPECIES" HeaderText="Species" SortExpression="SPECIES" />
                <asp:BoundField DataField="BATCH" HeaderText="Batch No" SortExpression="BATCH" />
                <asp:BoundField DataField="CREATION_DATE" HeaderText="Create date" SortExpression="CREATION_DATE" />
                <asp:BoundField DataField="ERROR_CODE" HeaderText="Error code" SortExpression="ERROR_CODE" />
                <asp:BoundField DataField="ERROR_TEXT" HeaderText="Error text" SortExpression="ERROR_TEXT" />
                <asp:BoundField DataField="LINE_STATUS" HeaderText="Status" SortExpression="LINE_STATUS" />
                <asp:BoundField DataField="RETRY_COUNT" HeaderText="Retry count" SortExpression="RETRY_COUNT" />
                <asp:BoundField DataField="DATE_SENT" HeaderText="Date sent" SortExpression="DATE_SENT" />
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
            SelectCommand="MORLPAYCERTS_trans" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonListSite" Name="var_site" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>

          </form>
        </body>
</html>
</asp:Content>
