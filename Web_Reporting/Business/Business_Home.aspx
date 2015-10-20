<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Business_Home.aspx.cs" Inherits="Business_Home" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head></head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

         <h1>Business Reports</h1>

    <div class="block_wrapper">

         <a href="Reporting/Operational/Operational_Reports.aspx" class="block_business_left" title="Business Reports">REPORTS<br /><span class="block_home_fresh">Hardware</span></a>
         <a href="Reporting/Non_Operational/Non_Operational_Reports.aspx" class="block_business_right" title="Technical Reports">REPORTS<br /><span class="block_home_fresh">Livestock</span></a>
         <a href="Integration/Integration_Reports.aspx" class="block_business_right_2" title="Integration Reports">REPORTS<br /><span class="block_home_fresh">Integration</span></a>
        
    </div>

    </form>
        </body>
</html>
</asp:Content>
