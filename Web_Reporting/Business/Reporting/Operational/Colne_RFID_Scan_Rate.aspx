<%@ Page Language="C#" AutoEventWireup="True" Inherits="Colne_RFID_Scan_Rate" MasterPageFile="~/Site.Master" Codebehind="Colne_RFID_Scan_Rate.aspx.cs" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtFromDate">
    <asp:ScriptManager ID="ScriptManager" runat="server">
    </asp:ScriptManager>

        <h1>Colne RFID Scan Rate</h1>

        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton><asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="ButtonDownload" runat="server" Text="Download" onclick="btnDownload_Click" CausesValidation="true" class="download_button" />
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

        <div style="display: inline-block; vertical-align: top;">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" ReadOnly="True" />
                <asp:BoundField DataField="Total Weighed" HeaderText="Total weighed" SortExpression="Total Weighed" />
                <asp:BoundField DataField="Total Scanned" HeaderText="Total scanned" SortExpression="Total Scanned" />
                <asp:BoundField DataField="Cumulative Scan Rate (%)¹" HeaderText="Cumulative Scan Rate (%)¹" SortExpression="Cumulative Scan Rate (%)¹" />
                <asp:BoundField DataField="Hourly Pigs Weighed" HeaderText="Hourly Pigs Weighed" ReadOnly="True" SortExpression="Hourly Pigs Weighed" />
                <asp:BoundField DataField="Hourly Pigs Not Scanned" HeaderText="Hourly Pigs Not Scanned" ReadOnly="True" SortExpression="Hourly Pigs Not Scanned" />
                <asp:BoundField DataField="Hourly Scan Rate (%)²" HeaderText="Hourly Scan Rate (%)²" ReadOnly="True" SortExpression="Hourly Scan Rate (%)²" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no records available. Please specify some criteria using the form.
            </EmptyDataTemplate>
            <RowStyle HorizontalAlign="Left" />
        </asp:GridView>
            <br />
            ¹ Cumulative scan rate is the total average scan rate for the day so far. It is based on a calculation of the total number weighed and scanned for the day so far.<br /> ² Hourly scan rate is the isolated scan rate for the previous hour only.
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_Colne_RFID_Scan_Rate" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtDate" 
                    Name="var_date" PropertyName="Text" Type="String"/>
            </SelectParameters>
        </asp:SqlDataSource> 
        </div>

         </form>
        </body>
</html>
</asp:Content>
