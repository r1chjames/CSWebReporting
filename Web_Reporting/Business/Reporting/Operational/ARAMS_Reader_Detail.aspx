<%@ Page Language="C#" AutoEventWireup="True" Inherits="ARAMS_Reader_Detail" MasterPageFile="~/Site.Master" Codebehind="ARAMS_Reader_Detail.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtFromDate">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

        <h1>ARAMS Reader Detail</h1>
        
        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton><asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="ButtonDownload" runat="server" Text="Batch information" onclick="btnDownload_Click" CausesValidation="true" class="download_button" />
        <asp:Button ID="ButtonDownload2" runat="server" Text="ARAMS data" onclick="btnDownload2_Click" CausesValidation="true" class="download_button" />
        <asp:Button ID="ButtonDownload3" runat="server" Text="Flock numbers" onclick="btnDownload3_Click" CausesValidation="true" class="download_button" />
        </asp:Panel>
    
        <br /><br />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
        <ContentTemplate>

        <div class="form_block">
        Date
        <br />
        <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtDateFrom" ControlToValidate="txtFromDate"  Display="Dynamic"><img id="Img1" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <asp:CalendarExtender ID="calendarFromDate" TargetControlID="txtFromDate" runat="server" Format="yyyy-MM-dd"/>
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

        <div>
     	<div style="display: inline-block; margin-right: 20px; vertical-align: top; float: left; margin-bottom: 20px;">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" onselectedindexchanged="GridView1_SelectedIndexChanged" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="BATCH" HeaderText="Batch No" ReadOnly="True" SortExpression="BATCH" />
                <asp:BoundField DataField="SUPPLIER" HeaderText="Supplier" ReadOnly="True" SortExpression="SUPPLIER" />
                <asp:BoundField DataField="NUMBER KILLED" HeaderText="Number killed" ReadOnly="True" SortExpression="NUMBER KILLED" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            Please select a date to return batch information.
            </EmptyDataTemplate>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_ARAMS_Batches" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtFromDate" Name="var_date1" PropertyName="Text" Type="String" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>

     	<div style="display: inline-block; margin-right: 20px; vertical-align: top; float: left; margin-bottom: 20px;">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" AllowSorting="True" onselectedindexchanged="GridView2_SelectedIndexChanged" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="SESSION NUMBER" HeaderText="Session No" ReadOnly="True" SortExpression="SESSION NUMBER" />
                <asp:BoundField DataField="NUMBER ANIMALS" HeaderText="Number animals" ReadOnly="True" SortExpression="NUMBER ANIMALS" />
                <asp:BoundField DataField="NUMBER TAGS" HeaderText="Number tags" ReadOnly="True" SortExpression="NUMBER TAGS" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            Please select a date to return ARAMS data.
            </EmptyDataTemplate>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_ARAMS_Readings" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtFromDate" Name="var_date1" PropertyName="Text" Type="String" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>

        <div style="display: inline-block; margin-right: 20px; vertical-align: top; float: left; margin-bottom: 20px;">
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" AllowSorting="True" onselectedindexchanged="GridView3_SelectedIndexChanged" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="SESSION NUMBER" HeaderText="Session No" SortExpression="SESSION NUMBER" />
                <asp:BoundField DataField="FLOCK NUMBER" HeaderText="Flock No" SortExpression="FLOCK NUMBER" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            Please select a date to return flock numbers.
            </EmptyDataTemplate>

<RowStyle HorizontalAlign="Left"></RowStyle>
        </asp:GridView>
            </ContentTemplate>  
        </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_ARAMS_Flocks" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtFromDate" Name="var_date1" PropertyName="Text" Type="String" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
        </div>
        </form>
        </body>
</html>
</asp:Content>
