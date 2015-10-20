<%@ Page Language="C#" AutoEventWireup="true" Codebehind="MORLSENDQ_Volumes.aspx.cs" Inherits="MORLSENDQ_Volumes" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
     
        <h1>Material Transaction Volumes</h1>
       
        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img src="~/Styles/images/down_arrow.png" alt="Down" runat="server"/></asp:LinkButton>
        <asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img src="~/Styles/images/up_arrow.png" alt="Up" runat="server"/></asp:LinkButton>
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
        <asp:RequiredFieldValidator runat="server" ID="ReqRdoSite" ControlToValidate="RadioButtonListSite" Display="Dynamic"><img id="Img4" src="~/Styles/images/required_white.png" alt="Required Field" runat="server" style="display: block; margin-top: 10px; margin-bottom: 0; margin-left: auto; margin-right: auto;" /></asp:RequiredFieldValidator>
        <br />
        Date from
        <br />
        <asp:TextBox ID="txtFromDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtDateFrom" ControlToValidate="txtFromDate"  Display="Dynamic"><img id="Img5" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <asp:CalendarExtender ID="calendarFromDate" TargetControlID="txtFromDate" runat="server" Format="yyyy-MM-dd"/>
        <br />
        Date to
        <br />
        <asp:TextBox ID="txtToDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtDateTo" ControlToValidate="txtToDate" Display="Dynamic"><img id="Img8" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <asp:CalendarExtender ID="calendarToDate" TargetControlID="txtToDate" runat="server" Format="yyyy-MM-dd"/>
        <br />
        Time from (HH:MM 24hr)
        <br />
        <asp:TextBox ID="txtFromTime" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtTimeFrom" ControlToValidate="txtFromTime"  Display="Dynamic"><img id="Img1" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <br />
        Time to (HH:MM 24hr)
        <br />
        <asp:TextBox ID="txtToTime" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtTimeTo" ControlToValidate="txtToTime" Display="Dynamic"><img id="Img2" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
        <br /><br />
        Production Stage
        <br />
        <asp:DropDownList ID="DropDownProdStage" runat="server">
             <asp:ListItem>All</asp:ListItem>
             <asp:ListItem>Kill</asp:ListItem>
             <asp:ListItem>Boning</asp:ListItem>
             <asp:ListItem>Quarter</asp:ListItem>
             <asp:ListItem>Detain</asp:ListItem>
             <asp:ListItem>Manedit</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:RequiredFieldValidator runat="server" ID="ReqDdlProdStage" ControlToValidate="DropDownProdStage" Display="Dynamic"><img id="Img7" src="~/Styles/images/required_white.png" alt="Required Field" runat="server" style="display: block; margin-top: 10px; margin-bottom: 0; margin-left: auto; margin-right: auto;" /></asp:RequiredFieldValidator>
        <br />
        <asp:RadioButtonList id="RadioButtonTransType" runat="server" RepeatDirection="Horizontal" class="radio_list">
            <asp:ListItem value="WI">WI</asp:ListItem>
            <asp:ListItem value="WC">WC</asp:ListItem>
            <asp:ListItem value="IA">IA</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator runat="server" ID="ReqRdoTransType" ControlToValidate="RadioButtonTransType" Display="Dynamic"><img id="Img6" src="~/Styles/images/required_white.png" alt="Required Field" runat="server" style="display: block; margin-top: 10px; margin-bottom: 0; margin-left: auto; margin-right: auto;" /></asp:RequiredFieldValidator>
        <br />
        <asp:RadioButtonList id="RadioButtonSpecies" runat="server" RepeatDirection="Horizontal" class="radio_list">
            <asp:ListItem value="G">'G'</asp:ListItem>
            <asp:ListItem value="L">Lamb</asp:ListItem>
            <asp:ListItem value="P">Pig</asp:ListItem>
            <asp:ListItem value="B">Cattle</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator runat="server" ID="ReqRdoSpecies" ControlToValidate="RadioButtonSpecies" Display="Dynamic"><img id="Img3" src="~/Styles/images/required_white.png" alt="Required Field" runat="server" style="display: block; margin-top: 10px; margin-bottom: 0; margin-left: auto; margin-right: auto;" /></asp:RequiredFieldValidator>
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
                <asp:BoundField DataField="Volume" HeaderText="Volume" SortExpression="Volume" ReadOnly="True" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" ReadOnly="True" SortExpression="Weight" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no transactions available. Please specify some criteria using the form
            </EmptyDataTemplate>
            <RowStyle HorizontalAlign="Left" />
        </asp:GridView>
            </ContentTemplate>  
    </asp:UpdatePanel> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_MORLSENDQ_Count" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonListSite"
                    Name="var_site" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtFromDate" 
                    Name="var_date1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtToDate"
                    Name="var_date2" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtFromTime" 
                    Name="var_time1" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtToTime"
                    Name="var_time2" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="RadioButtonTransType"
                    Name="var_trans_type" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="RadioButtonSpecies"
                    Name="var_species" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="DropDownProdStage"
                    Name="var_prod_stage" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>

          </form>
        </body>
</html>
</asp:Content>
