﻿<%@ Page Language="C#" AutoEventWireup="True" Inherits="OPM_Batch_Item_Enquiry" MasterPageFile="~/Site.Master" Codebehind="OPM_Batch_Item_Enquiry.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtItemNum">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

    
         <h1>OPM Batch Item Enquiry</h1>
  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
        <ContentTemplate>
            
            <div class="form_block"> 
            Item number
            <br />
            <asp:TextBox ID="txtItemNum" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="ReqtxtItemNum" ControlToValidate="txtItemNum" Display="Dynamic"><img id="Img1" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
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
            <asp:GridView ID="GridViewOPMBatchCheck" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" ReadOnly="True" />
                <asp:BoundField DataField="ext-batch-no" HeaderText="Ext Batch No" SortExpression="ext-batch-no" ReadOnly="True"/>
                <asp:BoundField DataField="batch-status" HeaderText="Status" SortExpression="batch-status" ReadOnly="True" />
                <asp:BoundField DataField="item-num" HeaderText="Item No" SortExpression="item-num" ReadOnly="True" />
                <asp:BoundField DataField="item-category" HeaderText="Category" SortExpression="item-category" ReadOnly="True" />
                <asp:BoundField DataField="item-desc" HeaderText="Item" SortExpression="item-desc" ReadOnly="True" />
                <asp:BoundField DataField="primary-product" HeaderText="Primary product" SortExpression="primary-product" ReadOnly="True"/>
                <asp:BoundField DataField="creation-date" HeaderText="Create date" SortExpression="creation-date" ReadOnly="True"  DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="plan-start-date" HeaderText="Planned start date" SortExpression="plan-start-date" ReadOnly="True"  DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="subinventory" HeaderText="Subinventory" ReadOnly="True" SortExpression="subinventory" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There is no item information available. Please enter an EBS item number
            </EmptyDataTemplate>
        </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="OPM_Batch_Item_Check" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtItemNum" 
                    Name="var_itemnum" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
        </form>
        </body>
</html>
</asp:Content>
