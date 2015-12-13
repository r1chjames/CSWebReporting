<%@ Page Language="C#" AutoEventWireup="True" Inherits="Biz_Unique_Numerator_Enq" MasterPageFile="~/Site.Master" Codebehind="Biz_Unique_Numerator_Enq.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtFromDate">
    <asp:ScriptManager ID="ScriptManager" runat="server">
    </asp:ScriptManager>
   
        <h1>Bizerba OCM Unique Numerator Enqury</h1>
   
        <hr />

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        <div class="form_block">
            Please note that this report may take up to five minutes to execute due to the large amounts of historic data in the system.
            <br />
            <br />
        <asp:RadioButtonList id="RadioButtonListSite" runat="server" RepeatDirection="Horizontal" class="radio_list">
            <asp:ListItem value="Colne">Colne</asp:ListItem>
            <asp:ListItem value="Spalding">Spalding</asp:ListItem>
            <asp:ListItem value="Turriff">Turriff</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator runat="server" ID="ReqRdoSite" ControlToValidate="RadioButtonListSite" Display="Dynamic"><img id="Img6" src="~/Styles/images/required_blank.png" alt="Required Field" runat="server" style="display: block; margin-top: -23px; margin-left: 188px;" /></asp:RequiredFieldValidator>
        <br />
        Device ID
        <br />
        <asp:TextBox ID="txtDevID" runat="server" MaxLength="2"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtDevID" ControlToValidate="txtDevID" Display="Dynamic"><img id="Img1" src="~/Styles/images/required_blank.png" alt="Required Field" runat="server" style="display: block; margin-top: -23px; margin-left: 188px;" /></asp:RequiredFieldValidator>
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

        <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" BackColor="White" CellPadding="4" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8">
            <Columns>
                <asp:BoundField DataField="Latest Numerator" HeaderText="Latest Numerator" 
                    SortExpression="Latest Numerator" />
                <asp:BoundField DataField="Site" HeaderText="Site" 
                    SortExpression="Site" ReadOnly="True" />
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
            SelectCommand="*DEV_OCM" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonListSite" 
                    Name="var_site" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtDevID" 
                    Name="var_devid" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource> 
        </div>

        </form>
        </body>
</html>
</asp:Content>
