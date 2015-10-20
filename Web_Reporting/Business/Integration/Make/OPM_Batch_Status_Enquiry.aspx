<%@ Page Language="C#" AutoEventWireup="True" Inherits="OPM_Batch_Status_Enquiry" MasterPageFile="~/Site.Master" Codebehind="OPM_Batch_Status_Enquiry.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtItemNum">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    
         <h1>OPM Batch Status Enquiry</h1>
  
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
        <ContentTemplate>

            <div class="form_block"> 
            Batch number
            <br />
            <asp:TextBox ID="txtBatch" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtBatch" Display="Dynamic"><img id="Img1" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
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
            <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" ReadOnly="True" />
                <asp:BoundField DataField="ext-batch-no" HeaderText="Ext Batch No" SortExpression="ext-batch-no" ReadOnly="True"/>
                <asp:BoundField DataField="batch-status" HeaderText="Status" SortExpression="batch-status" ReadOnly="True" />
                <asp:BoundField DataField="item-num" HeaderText="Item No" SortExpression="item-num" ReadOnly="True" />
                <asp:BoundField DataField="item-desc" HeaderText="Item" SortExpression="item-desc" ReadOnly="True" />
                <asp:BoundField DataField="primary-product" HeaderText="Primary product" ReadOnly="True" SortExpression="primary-product" />
                <asp:BoundField DataField="plan-start-date" HeaderText="Planned start date" ReadOnly="True" SortExpression="plan-start-date" DataFormatString="{0:dd-MM-yyyy}"/>
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There is no batch status information. Please enter an OPM batch number
            </EmptyDataTemplate>
        </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="OPM_Batch_Status_Check" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtbatch" 
                    Name="var_batch" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
           </div>
         </form>
        </body>
</html>
</asp:Content>
