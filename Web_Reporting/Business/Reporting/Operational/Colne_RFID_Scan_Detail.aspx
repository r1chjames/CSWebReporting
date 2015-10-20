<%@ Page Language="C#" AutoEventWireup="True" Inherits="Colne_RFID_Scan_Detail" MasterPageFile="~/Site.Master" Codebehind="Colne_RFID_Scan_Detail.aspx.cs" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

        <h1>Colne RFID Scan Detail</h1>

        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton><asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="ButtonDownload" runat="server" Text="Download" onclick="btnDownload_Click" CausesValidation="true" class="download_button" />
        </asp:Panel>

        <br /><br />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">  
        <ContentTemplate>

        <div class="form_block">
            Please note - the data is only accurate for today.
            <br /><br />
         
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
                <asp:BoundField DataField="Kill No" HeaderText="Kill No" SortExpression="Kill No"/>
                <asp:BoundField DataField="Probe" HeaderText="Probe" SortExpression="Probe" />
                <asp:BoundField DataField="Slap Mark" HeaderText="Slap Mark" SortExpression="Slap Mark" />
                <asp:BoundField DataField="Kill date" HeaderText="Kill date" SortExpression="Kill date"  DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="Kill time" HeaderText="Kill time" SortExpression="Kill time" />
                <asp:BoundField DataField="RFID Number" HeaderText="RFID No" SortExpression="RFID Number" />
                <asp:BoundField DataField="Sort Group Number" HeaderText="Sort Group No" SortExpression="Sort Group Number" />
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
            SelectCommand="Bus_Rep_Colne_RFID_Scan_Detail" 
            SelectCommandType="StoredProcedure">
        </asp:SqlDataSource> 
        </div>

         </form>
        </body>
</html>
</asp:Content>
