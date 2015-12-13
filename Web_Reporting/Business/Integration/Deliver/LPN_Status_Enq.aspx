<%@ Page Language="C#" AutoEventWireup="True" Inherits="LPN_Status_Enq" MasterPageFile="~/Site.Master" Codebehind="LPN_Status_Enq.aspx.cs" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" defaultbutton="btnSubmit" defaultfocus="txtFromDate">
    <asp:ScriptManager ID="ScriptManager" runat="server">
    </asp:ScriptManager>
   
        <h1>Despatch LPN Trace Enquiry</h1>
   
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

        <div class="form_block">
        LPN Number<br />
        <asp:TextBox ID="txtLPN" runat="server" MaxLength="15"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" ID="ReqtxtLPN" ControlToValidate="txtLPN" Display="Dynamic"><img id="Img1" src="~/Styles/images/required_green.png" alt="Required Field" runat="server" style="display: block; margin-top: -24px; margin-left: 175px;" /></asp:RequiredFieldValidator>
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
                <asp:BoundField DataField="Site" HeaderText="Site" SortExpression="Site" />
                <asp:BoundField DataField="LPN Number" HeaderText="LPN No" SortExpression="LPN Number" />
                <asp:BoundField DataField="Item Number" HeaderText="Item No" SortExpression="Item Number"/>
                <asp:BoundField DataField="Creation Date" HeaderText="Create date" SortExpression="Creation Date" DataFormatString="{0:dd-MM-yyyy}"/>
                <asp:BoundField DataField="Creation Time" HeaderText="Create time" SortExpression="Creation Time" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
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
            SelectCommand="Bus_Rep_LPN_Trace_Enq" 
            SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtLPN" 
                    Name="var_LPN" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource> 
        </div>

        </form>
        </body>
</html>
</asp:Content>
