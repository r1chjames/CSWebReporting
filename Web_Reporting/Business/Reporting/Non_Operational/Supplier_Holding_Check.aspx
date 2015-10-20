<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Supplier_Holding_Check.aspx.cs" Inherits="Supplier_Holding_Check" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

        <h1>Invalid Supplier Holding Numbers</h1>
        <h3>Options</h3>
        <asp:LinkButton ID="LinkButtonShow" runat="server" OnClick="LinkButtonDown_Click" CausesValidation="false"><img id="Img1" src="~/Styles/images/down_arrow.png" alt="Show panel" title="Show panel" runat="server"/></asp:LinkButton>
        <asp:LinkButton ID="LinkButtonHide" runat="server" OnClick="LinkButtonUp_Click" CausesValidation="false"><img id="Img2" src="~/Styles/images/up_arrow.png" alt="Hide panel" title="Hide panel" runat="server" /></asp:LinkButton>
        <asp:Panel ID="Panel1" runat="server">
        <asp:Button ID="btnDownload" runat="server" Text="Download" onclick="btnDownload_Click" CausesValidation="true" class="download_button" />
        </asp:Panel>
   
        <br /><br />

        <div class="form_block"> 
        All Woodheads livestock suppliers must have a holding number in the format <strong>XX/XXX/XXXX</strong>.
        <br /><br />            
        If a supplier site appears on this page, Data Maintenance will need to update it in Oracle EBS and re-check this page.
        <br /><br />              
        </div>


        <div style="display: inline-block; float: left; margin-right: 100px; margin-bottom: 10px;">

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" RowStyle-HorizontalAlign="Left" AlternatingRowStyle-BackColor="#e3f5d8" GridLines="None" CssClass="add_border">
            <Columns>
                <asp:BoundField DataField="LS Code" HeaderText="LS Code" SortExpression="LS Code" />
                <asp:BoundField DataField="Supplier Site Code" HeaderText="Supplier Code" SortExpression="Supplier Site Code" />
                <asp:BoundField DataField="Site Name" HeaderText="Site" SortExpression="Site Name" />
                <asp:BoundField DataField="Holding Number" HeaderText="Holding No" SortExpression="Holding Number" />
            </Columns>
            <EmptyDataTemplate>
            <!--Text to display when no records are available-->
            There are no supplier sites with an invalid holding number.
            </EmptyDataTemplate>

<RowStyle HorizontalAlign="Left"></RowStyle>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Web_Reporting %>" 
            SelectCommand="Bus_Rep_Holding_Format" 
            SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </div>
        <br /><br />
          </form>

        </body>
</html>
</asp:Content>