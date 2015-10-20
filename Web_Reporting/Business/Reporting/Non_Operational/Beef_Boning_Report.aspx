<%@ Page Language="C#" AutoEventWireup="True" Inherits="Beef_boning_report" MasterPageFile="~/Site.Master" Codebehind="Beef_Boning_Report.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtExtNum">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

        <h1>Beef Boning</h1>

        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton>
        <asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
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
        OPM Batch
        <br />
        <asp:TextBox ID="txtExtNum" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtExtNum" ControlToValidate="txtExtNum" Display="Dynamic"><img id="Img5" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
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
                <asp:BoundField DataField="OPM Batch" HeaderText="OPM Batch" SortExpression="OPM Batch" />
                                <asp:BoundField DataField="Kill Number" HeaderText="Kill No" SortExpression="Kill No" />
                                <asp:BoundField DataField="Ear Tag" HeaderText="Ear Tag" SortExpression="Ear Tag" ReadOnly="True" />
                                <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
                                <asp:BoundField DataField="Origin" HeaderText="Origin" SortExpression="Origin" />
                                <asp:BoundField DataField="Boned Date" HeaderText="Boned date" SortExpression="Boned date" DataFormatString="{0:yyyy-MM-dd}" />
                                <asp:BoundField DataField="Quarters Boned" HeaderText="Quarters boned" SortExpression="Quarters boned" ReadOnly="True" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no records available. Please enter a valid OPM batch.
            </EmptyDataTemplate>
            <RowStyle HorizontalAlign="Left" />
        </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_BeefBoningReport" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonListSite" Name="var_site" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtExtNum" Name="var_extbat" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource> 
        </div>

         </form>
        </body>
</html>
</asp:Content>
