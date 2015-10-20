<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Non_Operational_Reports.aspx.cs" Inherits="Non_Operational_Reports" MasterPageFile="~/Site.Master"%>
<asp:Content id="myContent" runat="server" ContentPlaceholderId="ContentPlaceHolder1">
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"/>

         <h1>Livestock Reports</h1>

    <div class="block_wrapper">
         
         <a href="Cattle_OTM_report.aspx" class="block_grey_large" title="Cattle aged 30 months or over at a specified site and date">Cattle OTM <br /> Report</a>        
         <a href="Beef_Boning_Report.aspx" class="block_grey_large" title="Beef carcasses processed into boning along with the origin and grade">Beef Boning <br /> Report</a>
         <a href="Carcass_Weights.aspx" class="block_grey_large" title="Cold weight for an individual carcass">Carcass Weights <br /> Report</a>
         <a href="Cattle_breed_report.aspx" class="block_grey_large" title="Quantities of cattle slaughtered against breeds">Cattle Breed <br /> Report</a>
         <a href="NFA_Cattle.aspx" class="block_grey_large" title="Non-farm assured cattle details for each site">NFA Cattle <br /> Report</a>
         <a href="Pig_probe_report.aspx" class="block_grey_large" title="Number of pigs slaughtered for a specified date range, probe, and origin">Pig Probe <br /> Report</a>
         <a href="Pig_kill_type_report.aspx" class="block_grey_large" title="Report to return the quantities of pigs slaughtered by their type">Pig Kill by Type <br /> Report</a>
         <a href="Supplier_kill_report.aspx" class="block_grey_large" title="Number of animals supplied by a third parties for a specified species and date range">Supplier Kill <br /> Report</a>
         <a href="Cattle_over_430KG_by_supplier.aspx" class="block_grey_large" title="Cattle over 430KG by Supplier">Cattle over 430KG <br /> by Supplier</a>
         <a href="Cattle_carcass_details.aspx" class="block_grey_large" title="Weight and grade information for cattle">Cattle Carcass <br /> Details</a>

 </div>

    </form>
        </body>
</html>
</asp:Content>
