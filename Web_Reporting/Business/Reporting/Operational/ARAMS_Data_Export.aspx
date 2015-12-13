﻿<%@ Page Language="C#" AutoEventWireup="True" Inherits="ARAMS_Data_Export" MasterPageFile="~/Site.Master" Codebehind="ARAMS_Data_Export.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtFromDate">
    <asp:ScriptManager ID="ScriptManager" runat="server">
    </asp:ScriptManager>

        <h1>ARAMS Data Export</h1>
        
        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton><asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="ButtonDownload" runat="server" Text="Tag Data" onclick="btnDownload_Click" CausesValidation="true" class="download_button" />
        <asp:Button ID="ButtonDownload2" runat="server" Text="Page Data" onclick="btnDownload2_Click" CausesValidation="true" class="download_button" />
        </asp:Panel>
    
        <br /><br />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
        <ContentTemplate>

        <div class="form_block">
        Date
        <br />
        <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtDate" ControlToValidate="txtDate"  Display="Dynamic"><img id="Img1" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <asp:CalendarExtender ID="calendarDate" TargetControlID="txtDate" runat="server" Format="yyyy-MM-dd"/>
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

        <div style="display: inline-block; vertical-align: top; float: left; margin-right: 40px; margin-bottom: 20px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" onselectedindexchanged="GridView1_SelectedIndexChanged" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Batch Number" HeaderText="Batch No" SortExpression="Batch Number" />
                <asp:BoundField DataField="CPH Number" HeaderText="CPH No" SortExpression="CPH Number" />
                <asp:BoundField DataField="Departure Date" HeaderText="Departure date" SortExpression="Departure Date" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="Supplier Name" HeaderText="Supplier" SortExpression="Supplier Name" />
                <asp:BoundField DataField="Supplier Site" HeaderText="Supplier Code" SortExpression="Supplier Site" />
                <asp:BoundField DataField="Postcode" HeaderText="Postcode" SortExpression="Postcode" />
                <asp:BoundField DataField="Arrival Date" HeaderText="Arrival date" SortExpression="Arrival Date" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Transport" HeaderText="Transport" SortExpression="Transport" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            Please select a date to return batch information.
            </EmptyDataTemplate>
            <RowStyle HorizontalAlign="Left" />
        </asp:GridView>
        </ContentTemplate>  
        </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_ARAMS_Batch_Hd" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtDate" Name="var_date" PropertyName="Text" Type="String" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
        
        </div>
        </form>
        </body>
</html>
</asp:Content>
