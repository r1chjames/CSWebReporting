<%@ Page Language="C#" AutoEventWireup="True" Inherits="Pig_probe_report" MasterPageFile="~/Site.Master" Codebehind="Pig_probe_report.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtFromDate">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

        <h1>Pig Probe</h1>

        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton><asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
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
        Probe from
        <br />
        <asp:TextBox ID="txtFromProbe" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtProbeFrom" ControlToValidate="txtFromProbe" Display="Dynamic"><img id="Img3" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <br />
        Probe to
        <br />
        <asp:TextBox ID="txtToProbe" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtProbeTo" ControlToValidate="txtToProbe" Display="Dynamic"><img id="Img4" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <br />
        Origin
        <br />
        <asp:TextBox ID="txtOrigin" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtOrigin" ControlToValidate="txtOrigin" Display="Dynamic"><img id="Img5" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
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
                <asp:BoundField DataField="Weight Band" HeaderText="Weight band" SortExpression="Weight Band" />
                <asp:BoundField DataField="Volume" HeaderText="Volume" SortExpression="Volume" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no records available. Please specify some criteria using the form.
            </EmptyDataTemplate>
        </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_Pig_Probe" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonListSite" Name="var_site" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="txtFromDate" Name="var_date1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtToDate" Name="var_date2" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtFromProbe" Name="var_probe1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtToProbe" Name="var_probe2" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtOrigin" Name="var_origin" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource> 
        </div>

         </form>
        </body>
</html>
</asp:Content>
