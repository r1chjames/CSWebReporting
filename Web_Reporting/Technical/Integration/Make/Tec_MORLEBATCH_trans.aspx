﻿<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Tec_MORLEBATCH_trans.aspx.cs" Inherits="MORLEBATCH_trans" MasterPageFile="~/Site.Master"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager" runat="server">
        </asp:ScriptManager>
  
        <h1>OPM Batch Transactions</h1>
    
        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img id="Img4" src="~/Styles/images/down_arrow.png" alt="Show panel" title="Show panel" runat="server"/></asp:LinkButton>
        <asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img id="Img5" src="~/Styles/images/up_arrow.png" alt="Hide panel" title="Hide panel" runat="server"/></asp:LinkButton>
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
        Date from
        <br />
        <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtDateFrom" ControlToValidate="txtFromDate"  Display="Dynamic"><img id="Img1" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <asp:CalendarExtender ID="calendarFromDate" TargetControlID="txtFromDate" runat="server" Format="yyyy-MM-dd"/>
        <br />
        Date to
        <br />
        <asp:TextBox ID="txtToDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtDateTo" ControlToValidate="txtToDate" Display="Dynamic"><img id="Img2" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <asp:CalendarExtender ID="calendarToDate" TargetControlID="txtToDate" runat="server" Format="yyyy-MM-dd"/>
        <br />
        Transaction status
        <br />
        <asp:TextBox ID="txtTransStatus" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtTransStatus" ControlToValidate="txtTransStatus" Display="Dynamic"><img id="Img3" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
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

        <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="200" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="creation_date" HeaderText="Create date" SortExpression="creation_date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="batch_no" HeaderText="Batch No" SortExpression="batch_no" />
                <asp:BoundField DataField="batch_status" HeaderText="Status" SortExpression="batch_status" />
                <asp:BoundField DataField="line_status" HeaderText="Line status" SortExpression="line_status" />
                <asp:BoundField DataField="item_category" HeaderText="Item category" SortExpression="item_category" />
                <asp:BoundField DataField="item_desc" HeaderText="Item" SortExpression="item_desc" />
                <asp:BoundField DataField="item_num" HeaderText="Item No" SortExpression="item_num" />
                <asp:BoundField DataField="line_type" HeaderText="Line type" SortExpression="line_type" />
                <asp:BoundField DataField="plan_start_date" HeaderText="Planned start date" SortExpression="plan_start_date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="primary_product" HeaderText="Primary product" SortExpression="primary_product" />
                <asp:BoundField DataField="subinventory" HeaderText="Subinventory" SortExpression="subinventory" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
                There are no transactions available. Please specify some criteria using fields above.
            </EmptyDataTemplate>
            <RowStyle HorizontalAlign="Left"></RowStyle>
            <PagerSettings Mode="NumericFirstLast" Position="Bottom" PageButtonCount="10" NextPageText=">>" PreviousPageText="<<" />
            <PagerStyle CssClass="pager-row" />
            <RowStyle CssClass="row" />
        </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="MORLEBATCH_trans" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonListSite"
                    Name="var_site" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtFromDate"
                    Name="var_date1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtToDate"
                    Name="var_date2" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtTransStatus"
                    Name="var_status" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
           </div>

          </form>
        </body>
</html>
</asp:Content>